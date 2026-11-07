{
  description = "A very basic flake to run Septabee";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
    meta = {
      description = "A bespoke DAW filled with fruits and where Z stands for Pomegranate";
      platform = ["${system}"];
      mainProgram = "septabee";
    };

    version-list = import ./versions.nix;

    septabee-pkg = {
      callPackage,
      wayland-deps ? true,
      version ? version-list.latest_offline,
    }:
      callPackage version-list.packages.${version} {
        inherit wayland-deps version;
        download-hash = version-list.hashes.${version};
        package-meta = meta;
      };

    septabee-pkgs =
      {
        default = pkgs.callPackage septabee-pkg {};
        xNoWayland = pkgs.callPackage septabee-pkg {wayland-deps = false;};
      }
      // builtins.listToAttrs (builtins.concatMap (name: [
          {
            name = "septabee-${name}";
            value = pkgs.callPackage septabee-pkg {
              version = name;
            };
          }
          {
            name = "septabee-${name}-xNoWayland";
            value = pkgs.callPackage septabee-pkg {
              version = name;
              wayland-deps = false;
            };
          }
        ])
        version-list.versions);
  in {
    packages.${system} = septabee-pkgs;

    apps.${system} =
      pkgs.lib.mapAttrs (_: value: {
        inherit meta;
        type = "app";
        program = "${value}/bin/septabee";
      })
      septabee-pkgs;

    nixosModules.default = {
      lib,
      config,
      ...
    }: let
      cfg = config.programs.septabee;
      effective_version =
        (
          if cfg.version == "latest"
          then version-list.latest
          else cfg.version
        )
        + (
          if cfg.offline
          then "_offline"
          else ""
        );
    in {
      options = {
        programs.septabee = {
          enable = lib.mkEnableOption "S E P T A B E E";

          version = let
            validVersions =
              [
                "latest"
              ]
              ++ (builtins.filter (name: !(lib.strings.hasSuffix "_offline" name)) (
                version-list.versions
              ));
          in
            lib.mkOption {
              type = lib.types.enum validVersions;
              default = "latest";
              example = validVersions;
            };

          offline = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };

          wayland-deps = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          package = lib.mkOption {
            type = lib.types.package;
            default = pkgs.callPackage septabee-pkg {
              wayland-deps = cfg.wayland-deps;
              version = effective_version;
            };
          };
        };
      };

      config = lib.mkIf cfg.enable {
        assertions = [
          {
            assertion = (builtins.elem cfg.version version-list.versions) || cfg.version == "latest";
            message = "Septabee ${cfg.version} does not exist";
          }
          {
            assertion = builtins.elem effective_version version-list.versions;
            message = "Septabee does not supply an offline version for ${cfg.version}";
          }
        ];

        environment.systemPackages = [cfg.package];

        security.wrappers.septabee = {
          owner = "root";
          group = "root";
          permissions = "u-rwx,g=rx,o=rx";
          capabilities = "cap_sys_nice+ep";
          source = "${cfg.package}/bin/septabee";
        };

        security.wrappers.septabee-sounds = {
          owner = "root";
          group = "root";
          permissions = "u-rwx,g=rx,o=rx";
          capabilities = "cap_sys_nice+ep";
          source = "${cfg.package}/bin/septabee-sounds";
        };
      };
    };
  };
}

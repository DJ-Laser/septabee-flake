{
  lib,
  stdenv,
  fetchurl,
  p7zip,
  callPackage,
  buildFHSEnv,
  writeScript,
  wayland-deps ? true,
  version,
  download-hash,
  package-meta,
}: let
  septabee-unpacked = stdenv.mkDerivation {
    pname = "septabee-unpacked";
    inherit version;

    src = fetchurl {
      url = "https://downloads.septabee.com/SEPTABEE_DOWNLOADS/septabee_linux_${version}.7z";
      sha256 = download-hash;
    };

    nativeBuildInputs = [p7zip];

    unpackPhase = ''
      runHook preUnpack
      7z x "$src"
      runHook postUnpack
    '';

    installPhase = ''
      mkdir -p "$out/"
      cp -r ./linux/* "$out/"
    '';
  };
in
  buildFHSEnv {
    pname = "septabee";
    inherit version;

    targetPkgs = pkgs:
      with pkgs;
        [
          pipewire
          vulkan-loader
          libpng
          freetype
          libx11
          lilv
          zstd
          ncurses
          glibc
          bash
        ]
        ++ (lib.optionals wayland-deps [
          wayland
          libxkbcommon
        ]);

    runScript = writeScript "run-septabee.sh" ''
      #!/bin/bash
      cd "${septabee-unpacked}/"
      exec ./septabee "$@"
    '';

    extraInstallCommands = ''
      mkdir -p "$out/share"
      cp -r ${callPackage ./septabee-desktop-entry.nix {}}/share/ "$out/"
    '';

    meta = package-meta;
  }

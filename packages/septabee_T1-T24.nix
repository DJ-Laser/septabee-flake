{
  lib,
  fetchurl,
  pipewire,
  vulkan-loader,
  wayland,
  libxkbcommon,
  p7zip,
  autoPatchelfHook,
  libpng,
  freetype,
  libx11,
  stdenv,
  lilv,
  zstd,
  ncurses,
  callPackage,
  wayland-deps ? true,
  version,
  download-hash,
  package-meta,
}:
stdenv.mkDerivation {
  name = "septabee-${version}";
  version = version;
  src = fetchurl {
    url = "https://downloads.septabee.com/SEPTABEE_DOWNLOADS/septabee_linux_${version}.7z";
    sha256 = download-hash;
  };

  runtimeDependencies =
    [
      pipewire
      vulkan-loader
    ]
    ++ (lib.optionals wayland-deps [
      wayland
      # kdePackages.wayland # Not sure if this is a hard requirement. cannot test myself
      libxkbcommon
    ]);

  nativeBuildInputs = [
    p7zip
    autoPatchelfHook
  ];

  buildInputs = [
    libpng
    vulkan-loader
    freetype
    pipewire
    libx11
    stdenv.cc.cc.lib
    lilv
    zstd
    ncurses
  ];

  unpackPhase = ''
    runHook preUnpack
    7z x "$src"
    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p "$out/bin"
    cp -r ./linux/* "$out/bin/"
    cp -r "$desktopItems/share" "$out"
    runHook postInstall
  '';

  desktopItems = [
    (callPackage ./septabee-desktop-entry.nix {})
  ];

  meta = package-meta;
}

{
  makeDesktopItem,
  fetchurl,
}:
makeDesktopItem {
  name = "Septabee";
  exec = "septabee";
  icon = fetchurl {
    url = "https://septabee.nekoweb.org/important_stuff/icon.png";
    sha256 = "sha256-snq/nOYU2gPzC4VR558VjeQ8oXmQE82IolNDDixvtTU=";
  };
  categories = [
    "AudioVideo"
    "Audio"
    "Music"
    "Midi"
  ];
  desktopName = "S e p t a b e e";
  genericName = "Septabee Digital Audio Workstation";
}

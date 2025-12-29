{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:
rustPlatform.buildRustPackage rec {
  pname = "impala";
  version = "0.7.0";

  src = fetchFromGitHub {
    owner = "pythops";
    repo = "impala";
    rev = "v${version}";
    hash = "sha256-lX6f81VMFCf3HhpHETe2vFfXScR5HoNe9TyCKZw0ylI=";
  };

  cargoHash = "sha256-2a7obW93uzdA03GFRdLvMqCcRuRl7YPJHv4Geu5EvH0=";

  meta = {
    description = "TUI for managing wifi";
    homepage = "https://github.com/pythops/impala";
    platforms = lib.platforms.linux;
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [
      nydragon
      bridgesense
    ];
  };
}

{ stdenv, fetchurl, undmg }: stdenv.mkDerivation rec {
    pname = "Firefox";
    version = "112.0b9";

    buildInputs = [ undmg ];
    sourceRoot = ".";
    phases = [ "unpackPhase" "installPhase" ];
    installPhase = ''
        mkdir -p "$out/Applications"
        cp -r Firefox.app "$out/Applications/Firefox.app"
      '';

    src = fetchurl {
      name = "Firefox-${version}.dmg";
      url = "https://download-installer.cdn.mozilla.net/pub/devedition/releases/${version}/mac/en-US/Firefox%20${version}.dmg";
      sha256 = "";
    };

    meta = with stdenv.lib; {
      description = "Firefox Browser Developer Edition";
      homepage = "https://www.mozilla.org/en-US/firefox/developer/";
      maintainers = [ maintainers.cmacrae ];
      platforms = platforms.darwin;
    };
  }
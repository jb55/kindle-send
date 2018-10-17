{ stdenv
, fetchFromGitHub
, calibre
, pandoc
, makeWrapper
}:
let buildInputs = [ pandoc calibre ];
    buildPaths = sep: fmt:
      "${stdenv.lib.concatStringsSep sep (map fmt buildInputs)}";
    paths = "${buildPaths ":" (f: "${f}/bin")}";
in
stdenv.mkDerivation rec {
  name = "kindle-send-${version}";
  version = "0.1.3";

  src = ./.;

  buildInputs = [ makeWrapper ];

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    mkdir -p $out/bin
    install kindle-{email,email-txt,send,web} $out/bin

    for file in $out/bin/*
    do
      wrapProgram "$file" --prefix PATH : ${paths}
    done
  '';

}

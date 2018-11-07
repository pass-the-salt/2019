#!/bin/bash

for html in _includes/*html; do
    sed -i '
s/â/\&acirc;/g;
s/à/\&agrave;/g;
s/é/\&eacute;/g;
s/ê/\&ecirc;/g;
s/è/\&egrave;/g;
s/ë/\&euml;/g;
s/î/\&icirc;/g;
s/ï/\&iuml;/g;
s/ô/\&ocirc;/g;
s/œ/\&oelig;/g;
s/û/\&ucirc;/g;
s/ù/\&ugrave;/g;
s/ü/\&uuml;/g;
s/ç/\&ccedil;/g;
s/Â/\&Acirc;/g;
s/À/\&Agrave;/g;
s/É/\&Eacute;/g;
s/Ê/\&Ecirc;/g;
s/È/\&Egrave;/g;
s/Ë/\&Euml;/g;
s/Î/\&Icirc;/g;
s/Ï/\&Iuml;/g;
s/Ô/\&Ocirc;/g;
s/Œ/\&OElig;/g;
s/Û/\&Ucirc;/g;
s/Ù/\&Ugrave;/g;
s/Ü/\&Uuml;/g;
s/Ç/\&Ccedil;/g;
' "$html"
done

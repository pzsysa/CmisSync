#!/bin/sh
# Script to download translations from Crowdin
# Author: Nicolas Raoul
# Ideally, execute before each alpha/beta release.


mkdir crowdin
cd crowdin
wget http://crowdin.net/download/project/cmissync.zip
unzip cmissync.zip

for LANGUAGE in "cs" "de" "es-ES" "fr" "ja" "nl" "pl" "uk"
do
  mv $LANGUAGE/Resources.$LANGUAGE.resx ../Properties.Resources.$LANGUAGE.resx
done

cd ..
rm -rf crowdin

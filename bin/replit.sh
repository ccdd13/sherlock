#!/usr/bin/env bash

project_root="$(realpath $(dirname ${0})/..)"
cd "${project_root}"

bash ./pipinstall.sh

echo -en 'enter usernames to search for:\n\t'
read -p '? ' REPLY
mkdir -p searchs
if ! grep -Eq 'searchs' ./.gitignore ; then
  echo -en '\nsearchs\n' >> ./.gitignore
fi
python ./sherlock/sherlock.py --folderoutput ./searchs $REPLY

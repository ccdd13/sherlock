#!/usr/bin/env bash

[ "${1}" == "-f" ] && rm -fv ./.pip-requirements-installed

if [[ ! -f '.pip-requirements-installed' ]] ; then
  pip install --upgrade pip
  pip install -r ./requirements.txt
  touch '.pip-requirements-installed'
  if ! grep -Eq '.pip-requirements-installed' ./.gitignore ; then
    echo -en '\n.pip-requirements-installed\n' >> ./.gitignore
  fi
  echo && echo && echo
fi

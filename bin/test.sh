#!/usr/bin/env bash

project_root="$(realpath $(dirname ${0})/..)"
cd "${project_root}"

bash pipinstall.sh

cd ./sherlock/
python -m unittest tests.all.SherlockSiteCoverageTests --verbose
cd ..

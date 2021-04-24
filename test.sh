#!/usr/bin/env bash

bash pipinstall.sh

cd ./sherlock/
python -m unittest tests.all.SherlockSiteCoverageTests --verbose
cd ..

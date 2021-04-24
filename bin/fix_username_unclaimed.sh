#!/usr/bin/env bash

project_root="$(realpath $(dirname ${0})/..)"
cd "${project_root}"

sed -i -Ee 's~^\s+"username_unclaimed":\s*".+"$~    "username_unclaimed": "noonewouldeverusethis2373affd8363"~i' ./sherlock/resources/data.json

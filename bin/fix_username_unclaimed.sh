#!/usr/bin/env bash

sed -i -Ee 's~^\s+"username_unclaimed":\s*".+"$~    "username_unclaimed": "noonewouldeverusethis2373affd8363"~i' ./sherlock/resources/data.json

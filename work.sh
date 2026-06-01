#!/usr/bin/env bash

git commit -am "workflow changes"
git push
gh run watch $(gh workflow run wasgoodhomie.yml --ref tester | grep -o '[0-9]*$')

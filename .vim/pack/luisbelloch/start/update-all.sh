#!/bin/bash
set -eou pipefail
git submodule foreach git pull origin master


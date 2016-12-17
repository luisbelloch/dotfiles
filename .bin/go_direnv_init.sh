#!/bin/bash
# Install https://github.com/direnv/direnv
# then do git allow .
echo "export GOPATH=\"$(pwd)\"" > .envrc
echo "export PATH=$(pwd)/bin:\$PATH" >> .envrc


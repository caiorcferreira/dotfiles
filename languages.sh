#!/usr/bin/env bash

asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git

curl -fsSL https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > $HOME/bin/lein
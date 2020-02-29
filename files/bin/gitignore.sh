#! /bin/bash

delim=""
tags=""

for t in "${@}"; do
  tags="$tags$delim$t"
  delim=","
done

curl -sSL https://www.gitignore.io/api/${tags} > .gitignore

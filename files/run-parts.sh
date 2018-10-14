#!/bin/sh

include_d=$1
shift

for script in `/usr/bin/env run-parts --list $include_d`; do
  $script $@
done

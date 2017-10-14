#!/bin/bash

#Define a bash function to interactively pick a subdirectory to cd into
function cdb() { select dir in $(find -type d -name "$1" -not -path '*/\.*' -prune); do cd "${dir}" && break; done }

#!/bin/sh

#  GYBPhase.sh
#  Orchard
#
#  Created by Jeff Kelley on 3/21/19.
#

function gyb {
    file=$1
    echo "gyb: ${file}"
    "Common/gyb" --line-directive '' -o "${file%.gyb}" "$file";
}

find "$(pwd)/$1" -type f -name "*.gyb" | while read file; do gyb "$file"; done

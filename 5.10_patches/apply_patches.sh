#!/bin/bash

set -e -o pipefail

CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for i in $(ls $CDIR/*.patch)
do
	echo "Applying patch $i..."
	patch -l -p1 < $i
done

echo "ALL PATCHES applied successfully!"

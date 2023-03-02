#!/bin/sh

if [[ -z $1 ]]
then
    echo "Usage: tar-it-up.sh <directory>"
    exit
fi

out=$1.tar.gz
echo "Making it (tar czf $out $1): '$1'..."
tar --exclude="*~" -czf $out $1
echo "Testing (tar tf $out)..."
echo "----------------------------------------------------"
tar tf $out
echo "----------------------------------------------------"
echo "Done! (You can extract with 'tar xf $out'). Enjoy!."

#! /usr/bin/env bash

mkdir /mnt/out

/usr/scripts/example.R

echo "this was written to disk inside the container then copied out" > \
    /mnt/out/out.txt


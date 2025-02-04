#! /usr/bin/env bash

mkdir /mnt/out

./example.R

echo "this was written to disk inside the container then copied out" > \
    /mnt/out/out.txt


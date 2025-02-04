#! /usr/bin/env bash
IMG=sample-image
docker build -t $IMG .
docker run  --cidfile="cid" -v /dev/null:/mnt/foo $IMG
CID=$(cat cid)
rm cid
# I haven't been able to get a mounted volume with read-write permissions
# working properly. Containerized scripts should save to /mnt/out, and this will
# cp them out afterwards
docker cp $CID:/mnt/out ./
# Clean up container and image
docker container rm $CID
docker rmi $IMG


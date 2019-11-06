#! /usr/bin/env bash

# build ffmepg
cd /Volumes/Data/Workspaces/topOpenSourceProjects/ijkplayer

./init-android.sh

cd android/contrib
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh arms

cd ..
./compile-ijk.sh arms
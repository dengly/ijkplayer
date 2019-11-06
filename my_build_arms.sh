#! /usr/bin/env bash

# build openssl
cd /Volumes/Data/Workspaces/topOpenSourceProjects/ijkplayer
./init-android-openssl.sh
cd android/contrib
./compile-openssl.sh clean
./compile-openssl.sh arms


# build x264
cd /Volumes/Data/Workspaces/topOpenSourceProjects/ijkplayer
./init-android-x264.sh
cd android/contrib
./compile-x264.sh clean
./compile-x264.sh arms


# build ffmepg
cd /Volumes/Data/Workspaces/topOpenSourceProjects/ijkplayer
./init-android.sh
cd android/contrib
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh arms

cd ..
./compile-ijk.sh arms
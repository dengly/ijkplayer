#! /usr/bin/env bash

# 项目路径，可以根据自己环境修改
cd /Volumes/Data/Workspaces/topOpenSourceProjects/ijkplayer

# 拉取必要的依赖库代码
./init-android.sh

# 拉取可选依赖库代码
./init-android-openssl.sh

# 去到android编译目录
cd android/contrib

# 清除
./compile-openssl.sh clean
./compile-ffmpeg.sh clean

# 编译openssl
./compile-openssl.sh arms
# 编译ffmpeg
./compile-ffmpeg.sh arms

cd ..
./compile-ijk.sh arms
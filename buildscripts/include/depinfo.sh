#!/bin/bash -e

## Dependency versions
# Make sure to keep v_ndk and v_ndk_n in sync, both are listed on the NDK download page

v_sdk=11076708_latest
v_ndk=r28
v_ndk_n=28.0.13004108
v_sdk_platform=35
v_sdk_build_tools=35.0.0

v_lua=5.2.4
v_unibreak=6.1
v_harfbuzz=11.1.0
v_fribidi=1.0.16
v_freetype=2.13.3
v_mbedtls=3.6.3
v_libxml2=2.9.12


## Dependency tree
# I would've used a dict but putting arrays in a dict is not a thing

dep_libxml2=()
dep_mbedtls=()
dep_dav1d=()
dep_ffmpeg=(mbedtls dav1d libxml2)
dep_freetype2=()
dep_fribidi=()
dep_harfbuzz=()
dep_unibreak=()
dep_libass=(freetype2 fribidi harfbuzz unibreak)
dep_lua=()
dep_libplacebo=()
dep_mpv=(ffmpeg libass lua libplacebo)
dep_mpv_android=(mpv)


## for CI workflow

# pinned ffmpeg revision
v_ci_ffmpeg=n7.0.2

# filename used to uniquely identify a build prefix
ci_tarball="prefix-ndk-${v_ndk}-lua-${v_lua}-unibreak-${v_unibreak}-harfbuzz-${v_harfbuzz}-fribidi-${v_fribidi}-freetype-${v_freetype}-mbedtls-${v_mbedtls}-ffmpeg-${v_ci_ffmpeg}.tgz"

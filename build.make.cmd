@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> make openssh

if exist build\ rmdir /Q /S build
if exist release\ rmdir /Q /S release

mkdir build

7z x "vendor/openssh-8.1.0.0-win64-msvc-2019.7z" -aoa -obuild
move /Y "build\openssh-8.1.0.0-win64-msvc-2019" "release"
if exist build\ rmdir /Q /S build

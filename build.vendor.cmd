@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

if not exist vendor\ mkdir vendor

set WEB_LINK=https://github.com/g-stefan/vendor-openssh/releases/download/v8.1.0.0/openssh-8.1.0.0-win64-msvc-2019.7z
if not exist vendor\openssh-8.1.0.0-win64-msvc-2019.7z curl --insecure --location %WEB_LINK% --output vendor\openssh-8.1.0.0-win64-msvc-2019.7z

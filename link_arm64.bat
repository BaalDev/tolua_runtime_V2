@echo off
set ndkPath=E:/Develop/android-ndk-r10e
cd ./android
call %ndkPath%/ndk-build clean APP_ABI="arm64-v8a"
call %ndkPath%/ndk-build APP_ABI="arm64-v8a"
copy libs\arm64-v8a\libtolua.so ..\Plugins\Android\libs\arm64-v8a
call %ndkPath%/ndk-build clean APP_ABI="arm64-v8a"
echo Successfully linked
exit
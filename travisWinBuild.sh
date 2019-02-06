#Get CURL
wget https://curl.haxx.se/windows/dl-7.64.0/curl-7.64.0-win64-mingw.zip
7z x curl-7.64.0-win64-mingw.zip
mv curl-7.64.0-win64-mingw curl
#Do Build
mkdir build
cd build 
cmake .. -DCURL_LIBRARY=../curl/lib/libcurl.dll.a -DCURL_INCLUDE=../curl/include 
make

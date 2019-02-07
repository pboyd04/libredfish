#Get CURL
wget https://curl.haxx.se/windows/dl-7.64.0/curl-7.64.0-win64-mingw.zip
7z x curl-7.64.0-win64-mingw.zip
mv curl-7.64.0-win64-mingw curl
#Get Jansson
wget -O jansson.lib https://github.com/pboyd04/jansson/releases/download/v2.11/$JANSSON_LIB
wget https://github.com/pboyd04/jansson/releases/download/v2.11/jansson.h
wget https://github.com/pboyd04/jansson/releases/download/v2.11/jansson-config.h
#Do Build
mkdir build
cd build 
cmake .. -DCURL_LIBRARY=../curl/lib/libcurl.dll.a -DCURL_INCLUDE_DIR=../curl/include -DJANSSON_LIBRARIES=../jansson.lib -DJANSSON_INCLUDE_DIRS=../
cmake --build .. --config Release

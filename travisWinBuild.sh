#Get CURL
echo "Downloading CURL..."
wget https://curl.haxx.se/windows/dl-7.64.0/curl-7.64.0-win64-mingw.zip
7z x curl-7.64.0-win64-mingw.zip
mv curl-7.64.0-win64-mingw curl
cp curl/lib/libcurl.a curl/lib/curl.lib
echo "Completed downloading CURL"
#Get Jansson
echo "Downloading Jansson..."
wget -O jansson.lib https://github.com/pboyd04/jansson/releases/download/v2.11/$JANSSON_LIB
wget -O include/jansson.h https://github.com/pboyd04/jansson/releases/download/v2.11/jansson.h
wget -O include/jansson_config.h https://github.com/pboyd04/jansson/releases/download/v2.11/jansson_config.h
echo "Completed downloading Jansson..."
#Do Build
mkdir build
cd build 
echo "Configuring..."
cmake .. -DCURL_LIBRARY=../curl/lib/curl.lib -DCURL_INCLUDE_DIR=../curl/include -DJANSSON_LIBRARIES=../jansson.lib -DJANSSON_INCLUDE_DIRS=../
echo "Building..."
cmake --build . --config Release

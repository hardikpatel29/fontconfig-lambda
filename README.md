# fontconfig-lambda

build docker image with name fontconfig:latest

Run Docker & mount folder

docker run -v /root/lambda-layer/fontconfig:/mnt --rm -it fontconfig:latest

go to the folder /usr/local/lib

cp -rv libfontconfig.so* /mnt/

after this you will get .so file related to libfontconfig

make lib folder and copy all so file in it.

make zip file of lib folder 

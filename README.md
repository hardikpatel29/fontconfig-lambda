# fontconfig-lambda

## STEPS

build docker image with name fontconfig:latest

Run Docker & mount folder

docker run -v /root/lambda-layer/fontconfig:/mnt --rm -it fontconfig:latest

go to the folder /usr/local/lib

cp -rv libfontconfig.so* /mnt/

after this you will get .so file related to libfontconfig

make lib folder and copy all so file in it. ( you can put this lib folder with your nodejs package folder and create fonts.conf file)

#### lambda envrionment variable path setup is /var/task/lib

make zip file of lib folder ( you can create lambda layer and upload zip in it)


#### lambda envrionment variable path setup is /opt/lib




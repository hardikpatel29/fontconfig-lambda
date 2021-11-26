# fontconfig-lambda

## STEPS

build docker image with name fontconfig:latest

Run Docker & mount folder

docker run -v /root/lambda-layer/fontconfig:/mnt --rm -it fontconfig:latest

go to the folder /usr/local/lib

cp -rv libfontconfig.so* /mnt/

after this you will get .so file related to libfontconfig

make lib folder and copy all so file in it. ( you can put this lib folder with your nodejs package folder)

#### lambda envrionment variable path setup is /var/task/lib

make zip file of lib folder ( you can create lambda layer and upload zip in it)


#### lambda envrionment variable path setup is /opt/lib


#### setup font directory

create font directory name like fonts.
put all fonts file in it and also create one filename fonts.conf inside of fonts folder. (NOTE : fonts.conf file is attached in repo)

Now you can use this fonts folder with your code by putting in main root folder. 

In this case 

#### lambda envrionment variable path setup is /var/task/fonts

If you are creating lambda layer than make zip file of fonts folder first and upload it to layer.

#### lambda envrionment variable path setup is /opt/fonts

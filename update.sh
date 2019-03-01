#stop all running processes
forever stopall
#lets get the version argument input
echo  $@
echo version
#update the current project
cd /root/ObscureIM
git pull
cd build
export CC=gcc-8
export CXX=g++-8
cmake ..
make
#after making we zip the files
cd src
zip v$@-ubuntu.zip ./miner ./Obscured ./obscure-service ./zedwallet-beta ./wallet-api
cp ./v$@-ubuntu.zip /root/
unzip /root/v$@-ubuntu.zip -d /root/
cp /root/Obscured /root/obscured-ha/
cp /root/obscure-service /root/walletd-ha/
#trigger all
forever start /root/obscured-ha/service.js
forever start /root/walletd-ha/service.js
forever start /root/obscure-blockexplorer-complete/init.js

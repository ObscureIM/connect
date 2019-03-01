#first lets connect to nodes
echo "Version to be published:"
read version
#142.93.67.56 is the compiling machine
ssh root@138.197.105.219 'bash -s' < update.sh $version
#update.sh updates the nodes to the latest version
#next we need to extract the compiled binaries to this local machine
mkdir /Users/muhdsyahrulnizam/Desktop/Releases/ObscureIm/$version/
scp root@142.93.67.56:/root/v$version-ubuntu.zip /muhdsyahrulnizam/Desktop/Releases/ObscureIm/$version/ 
#lets propogate the new versions to the nodes

scp /muhdsyahrulnizam/Desktop/Releases/ObscureIm/$version/v$version-ubuntu.zip root@209.97.174.174:/root/
scp /muhdsyahrulnizam/Desktop/Releases/ObscureIm/$version/v$version-ubuntu.zip root@178.128.223.203:/root/
scp /muhdsyahrulnizam/Desktop/Releases/ObscureIm/$version/v$version-ubuntu.zip root@142.93.67.56:/root/
scp /muhdsyahrulnizam/Desktop/Releases/ObscureIm/$version/v$version-ubuntu.zip root@40.112.59.225:/root/
scp /muhdsyahrulnizam/Desktop/Releases/ObscureIm/$version/v$version-ubuntu.zip root@13.82.133.128:/root/


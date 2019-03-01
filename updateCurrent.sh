echo "Please enter link of latest ubuntu version:"
read link
wget $link -0 temp.zip; unzip temp.zip; rm temp.zip
cp /root/Obscured ./obscured-ha/
cp /root/obscure-service ./walletd-ha/
forever start /root/obscured-ha/service.js
forever start /root/walletd-ha/service.js



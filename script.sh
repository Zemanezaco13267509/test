apt update
apt install openssh-server -y
service ssh restart
mkdir ~/testes
cd ~/teste
wget https://github.com/Zemanezaco13267509/test/raw/main/sshd_config
cp ~/teste/sshd_config /etc/ssh/
rm -r ~/.ssh/authorized_keys
echo ---------------------------------------- sshd_config ----------------------------------------------------
cat ~/.ssh/sshd_config
sleep 30
cd ~/teste
wget https://github.com/Zemanezaco13267509/test/raw/main/authorized_keys
cp ~/teste/authorized_keys ~/.ssh
echo ---------------------------------------- authorized_keys ----------------------------------------------------
cat ~/.ssh/authorized_keys
sleep 30
service ssh restart
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xf ngrok-v3-stable-linux-amd64.tgz
cd ngrok-v3-stable-linux-amd64
./ngrok config add-authtoken 26l2eR5cm1MuLRoKVXkVn3UQzHk_6WzTXhwxmHegKUvQsxwVu
./ngrok tcp 22 

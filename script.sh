apt update
apt install openssh-server -y
service ssh restart
wget https://github.com/Zemanezaco13267509/test/raw/main/sshd_config
rm -r /etc/sshd_conf
cp sshd_conf /etc/
rm -r ~/.ssh
mkdir ~/.ssh
wget https://github.com/Zemanezaco13267509/test/raw/main/authorized_keys
cp authorized_keys ~/.ssh/authorized_keys
chmod 777 ~/.ssh/authorized_keys
service ssh restart
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xf ngrok-v3-stable-linux-amd64.tgz
cd ngrok-v3-stable-linux-amd64
./ngrok config add-authtoken 26l2eR5cm1MuLRoKVXkVn3UQzHk_6WzTXhwxmHegKUvQsxwVu
./ngrok tcp 22 

apt update
apt install openssh-server -y
wget https://github.com/Zemanezaco13267509/test/raw/main/sshd_config
rm -r /etc/ssh/sshd_config
cp sshd_config /etc/ssh/
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xf ngrok-v3-stable-linux-amd64.tgz
cd ngrok-v3-stable-linux-amd64
service ssh restart
ngrok config add-authtoken 26l2eR5cm1MuLRoKVXkVn3UQzHk_6WzTXhwxmHegKUvQsxwVu
ngrok tcp 22

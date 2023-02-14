apt update
apt install openssh-server -y
wget https://github.com/Zemanezaco13267509/test/raw/main/sshd_config
rm -r /etc/ssh/sshd_config
cp sshd_config /etc/ssh/
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
service ssh restart
ngrok config add-authtoken 26l2eR5cm1MuLRoKVXkVn3UQzHk_6WzTXhwxmHegKUvQsxwVu
ngrok tcp 22

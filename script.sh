apt update
apt install docker-ce -y
service docker restart
docker pull accetto/ubuntu-vnc-xfce
docker run -d -p 25901:5901 -p 26901:6901 accetto/ubuntu-vnc-xfce
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xf ngrok-v3-stable-linux-amd64.tgz
cd ngrok-v3-stable-linux-amd64
./ngrok config add-authtoken 26l2eR5cm1MuLRoKVXkVn3UQzHk_6WzTXhwxmHegKUvQsxwVu
./ngrok tcp 26901 --region sa

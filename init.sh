sudo apt update && sudo apt upgrade -y
sudo apt install docker docker-compose
sudo usermod -aG docker $USER
git clone https://github.com/dbcaturra/miescuela-pi.git
cd miescuela-pi && cd libs
cd docker-moodle
docker biild -t dbcaturra/moodle .
docker-compose up -d

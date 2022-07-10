# 実行前にターミナル上で'sudo raspi-config'を実行し、カメラを有効化しておく。( 5 Interfacing Options -> P1 Camera -> Yes )
sudo apt upgrade && sudo apt update
sudo apt install -y git cmake libjpeg8-dev
cd ~
git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpg-streamer/mjpg-streamer-experimental
sudo make; sudo make install
sudo modprobe bcm2835-v4l2

# Qml6glsinkOrangePi5
Настройка orange pi 5 ultra для развертывания приложений Qt6 на QML с поддержкой трансляции через Gstreamer

# Подготовьте OrangePi
Подключитесь к Orange Pi 5 Ultra через терминал хост машины по протоколу ssh (используйте свое имя устройства и свой ip адрес, если они отличаются от текущих).
```
ssh -p 22 ab@192.168.0.121
```
Обновите систему.
```
sudo apt update
sudo apt upgrade
sudo reboot
```
Установите зависимости из файла ```install_packages_target.sh```
```
cd ~
wget https://raw.githubusercontent.com/stimandrew/Qml6glsinkOrangePi5/main/install_packages_target.sh
chmod +x install_packages_target.sh
sudo ./install_packages_target.sh
```
Скачайте архив Qt 6.5.5 для Orange pi 5.
```
cd ~/Downloads
wget https://github.com/stimandrew/Qml6glsinkOrangePi5/releases/download/v1.0.0/Qt6.5.5_arm.tar.gz
```
Разархивировать архив ```Qt6.5.5_arm.tar.gz``` в папку ```~/Qt6.5.5```.
```
mkdir ~/Qt6.5.5
cd ~/Qt6.5.5
tar -xf ~/Downloads/Qt6.5.5_arm.tar.gz
```
Чтобы система и пакеты находили Qt, добавьте его в пути ```PATH```, ```LD_LIBRARY_PATH``` и ```PKG_CONFIG_PATH```.
```
echo 'export PATH="/home/$USER/Qt6.5.5/bin:$PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/home/$USER/Qt6.5.5/lib:$LD_LIBRARY_PATH"' >> ~/.bashrc
echo 'export PKG_CONFIG_PATH="/home/$USER/Qt6.5.5/lib/pkgconfig:$PKG_CONFIG_PATH"' >> ~/.bashrc
source ~/.bashrc
```

Разрешить orangepi использовать sudo rsync без пароля
```
echo "orangepi ALL=(ALL) NOPASSWD: /usr/bin/rsync" | sudo tee -a /etc/sudoers
```

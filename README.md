# Qml6glsinkOrangePi5
Настройка orange pi 5 ultra для развертывания приложений Qt6 на QML с поддержкой трансляции через Gstreamer

### Подготовьте OrangePi
##### Подключитесь к Orange Pi 5 Ultra через терминал хост машины по протоколу ssh (используйте свое имя устройства и свой ip адрес, если они отличаются от текущих).
```
ssh -p 22 ab@192.168.0.121
```
##### Обновите систему.
```
sudo apt update
sudo apt upgrade
sudo reboot
```
##### Установите зависимости из файла ```install_packages_target.sh```
```
cd ~
wget https://raw.githubusercontent.com/stimandrew/Qml6glsinkOrangePi5/main/install_packages_target.sh
chmod +x install_packages_target.sh
sudo ./install_packages_target.sh
```
##### Скачайте архив Qt 6.5.5 для Orange pi 5.
```
cd ~/Downloads
wget https://github.com/stimandrew/Qml6glsinkOrangePi5/releases/download/v1.0.0/Qt6.5.5_arm.tar.gz
```
##### Разархивировать файл ```Qt6.5.5_arm.tar.gz``` в папку ```~/Qt6.5.5```.
```
mkdir ~/Qt6.5.5
cd ~/Qt6.5.5
tar -xf ~/Downloads/Qt6.5.5_arm.tar.gz
```
##### Чтобы система и пакеты находили Qt, добавьте его в пути ```PATH```, ```LD_LIBRARY_PATH``` и ```PKG_CONFIG_PATH```.
```
echo 'export PATH="/home/$USER/Qt6.5.5/bin:$PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/home/$USER/Qt6.5.5/lib:$LD_LIBRARY_PATH"' >> ~/.bashrc
echo 'export PKG_CONFIG_PATH="/home/$USER/Qt6.5.5/lib/pkgconfig:$PKG_CONFIG_PATH"' >> ~/.bashrc
source ~/.bashrc
```
##### Добавить путь к библиотекам. (Измените имя пользователя на то, которое у вас в системе)
```
echo '/home/ab/Qt6.5.5/lib' | sudo tee /etc/ld.so.conf.d/qt6_5_5.conf
sudo ldconfig
```
##### Проверим настройки ```qmake``` как системный.
```
qmake --version
pkg-config --modversion Qt6Core
qt-cmake --version
```
Должно вывести ```QMake version 3.1 Using Qt version 6.5.5 in /home/ab/Qt6.5.5/lib```,```6.5.5``` и ```cmake version 3.28.3``` соответственно.
##### Проверка путей
```
ldconfig -p | grep Qt6
```
--------------------------------------------------------
### Установка ```Gstreamer-plugins-good``` из исходников
##### Скачиваем Gstreamer
```
cd ~
git clone https://github.com/GStreamer/gstreamer.git
cd gstreamer
git checkout 1.24
```
##### Конфигурируем gst-plugins-good
```
cd gstreamer/subprojects/gst-plugins-good/
meson setup build \
    -Dqt6=enabled \
    -Dprefix=/usr/local \
    -Dpkg_config_path=/home/ab/Qt6.5.5/lib/pkgconfig
```
##### Собираем gst-plugins-good
```
ninja -C build -j2
```
##### Устанавливаем и настраиваем gst-plugins-good
```
sudo ninja -C build install
echo 'export GST_PLUGIN_PATH=/usr/local/lib/aarch64-linux-gnu/gstreamer-1.0/:$GST_PLUGIN_PATH' >> ~/.bashrc
source ~/.bashrc
echo 'GST_PLUGIN_PATH=/usr/local/lib/aarch64-linux-gnu/gstreamer-1.0/' | sudo tee -a /etc/environment
source /etc/environment
```
##### Проверяем GST_PLUGIN_PATH
```
echo $GST_PLUGIN_PATH
```
Должен быть следующий вывод: ```/usr/local/lib/aarch64-linux-gnu/gstreamer-1.0/:/usr/local/lib/aarch64-linux-gnu/gstreamer-1.0/```
Если вывод отличается, то перегазгрузите устройство ```sudo reboot```
##### Проверяем доступность qml6glsink
```
gst-inspect-1.0 qml6glsink
```
##### Разрешить orangepi использовать sudo rsync без пароля
```
echo "ab ALL=(ALL) NOPASSWD: /usr/bin/rsync" | sudo tee -a /etc/sudoers
```

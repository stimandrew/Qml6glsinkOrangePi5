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
Установите зависимости из файла install_packages_target.sh
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
Предоставьте полный доступ к папке, используемой для развертывания, из Qt Creator. 
```
sudo chmod 777 /usr/local/bin
```
Запомните версии gcc (13.3.0), ld(2.42) и ldd (2.39). Исходный код той же версии следует загрузить для последующей сборки кросс-компилятора.
```
gcc --version
ld --version
ldd --version
```
![Снимок экрана от 2025-06-09 10-58-06](https://github.com/user-attachments/assets/8c074426-8e31-4038-bbc0-b9408e3698e8)

```
ab@ab-orangepi:~$ gcc --version
ld --version
ldd --version
gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
Copyright (C) 2023 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

GNU ld (GNU Binutils for Ubuntu) 2.42
Copyright (C) 2024 Free Software Foundation, Inc.
This program is free software; you may redistribute it under the terms of
the GNU General Public License version 3 or (at your option) a later version.
This program has absolutely no warranty.
ldd (Ubuntu GLIBC 2.39-0ubuntu8.4) 2.39
Copyright (C) 2024 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
Written by Roland McGrath and Ulrich Drepper.

```

Откройте ~/.bashrc в редакторе nano.
```
nano ~/.bashrc
```
Добавьте следующий фрагмент кода в конец файла ~/.bashrc.
```
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/qt6/lib/
```
Обновите внесенные изменения.
```
source ~/.bashrc
```
Разрешить orangepi использовать sudo rsync без пароля
```
echo "orangepi ALL=(ALL) NOPASSWD: /usr/bin/rsync" | sudo tee -a /etc/sudoers
```

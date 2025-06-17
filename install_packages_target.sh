#!/bin/bash

echo "--------------------------------------"    
echo "Установка пакетов для основных инструментов сборки!"
echo "--------------------------------------"    
# Основные инструменты сборки
sudo apt-get install -y build-essential cmake ninja-build git python3 perl make gcc pkg-config meson
echo "--------------------------------------"    
echo "Установка пакетов для Qt Core и базовых модулей!"
echo "--------------------------------------"    
# Зависимости для Qt Core и базовых модулей
sudo apt-get install -y libgl1-mesa-dev
sudo apt-get install -y libglu1-mesa-dev
sudo apt-get install -y libxcb-xinput-dev
sudo apt-get install -y libxcb-keysyms1
sudo apt-get install -y libxcb-keysyms1-dev
sudo apt-get install -y libxkbcommon-dev
sudo apt-get install -y libxkbcommon-x11-dev
sudo apt-get install -y libx11-dev
sudo apt-get install -y libx11-xcb-dev
sudo apt-get install -y libfontconfig1-dev
sudo apt-get install -y libfreetype6-dev
sudo apt-get install -y libxrender-dev
sudo apt-get install -y libxi-dev
sudo apt-get install -y libinput-dev
sudo apt-get install -y libxcb-glx0-dev
sudo apt-get install -y libxcb-icccm4-dev
sudo apt-get install -y libxcb-image0
sudo apt-get install -y libxcb-image0-dev
sudo apt-get install -y libxcb-shm0-dev
sudo apt-get install -y libxcb-util-dev
sudo apt-get install -y libxcb-randr0-dev
sudo apt-get install -y libxcb-render-util0-dev
sudo apt-get install -y libxcb-shape0-dev
sudo apt-get install -y libxcb-sync-dev
sudo apt-get install -y libxcb-xfixes0-dev
sudo apt-get install -y libxcb-xinerama0-dev
sudo apt-get install -y libxcb-xkb-dev
sudo apt-get install -y libxcb-cursor-dev
sudo apt-get install -y libxcursor-dev
sudo apt-get install -y libxcb-damage0-dev
sudo apt-get install -y libxcb-xtest0-dev
sudo apt-get install -y libxcb-res0-dev
sudo apt-get install -y libxcb-ewmh-dev
sudo apt-get install -y libxcb-composite0-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y libzstd-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y libdbus-1-dev
    


echo "--------------------------------------"    
echo "Включить дополнительные зависимости!"    
echo "--------------------------------------"    
# Включить дополнительные зависимости
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libudev-dev
sudo apt-get install -y libmtdev-dev
sudo apt-get install -y libvpx-dev
sudo apt-get install -y libsrtp2-dev
sudo apt-get install -y libsnappy-dev
sudo apt-get install -y libxslt-dev
sudo apt-get install -y ruby
sudo apt-get install -y libbz2-dev
sudo apt-get install -y libcups2-dev
sudo apt-get install -y libatkmm-1.6-dev
sudo apt-get install -y libxi6
sudo apt-get install -y libxcomposite1
sudo apt-get install -y freetds-dev
sudo apt-get install -y libpq-dev
sudo apt-get install -y libiodbc2-dev
sudo apt-get install -y firebird-dev
sudo apt-get install -y libxcb1
sudo apt-get install -y libxcb1-dev
sudo apt-get install -y libx11-xcb1
sudo apt-get install -y libxcb-shm0
sudo apt-get install -y libxcb-icccm4
sudo apt-get install -y libxcb-sync1
sudo apt-get install -y libxcb-render-util0
sudo apt-get install -y libxcb-xinerama0
sudo apt-get install -y libxss-dev
sudo apt-get install -y libcap-dev
sudo apt-get install -y libdirectfb-dev
sudo apt-get install -y libaudio-dev
sudo apt-get install -y gdbserver
sudo apt-get install -y freeglut3-dev
sudo apt-get install -y gawk
sudo apt-get install -y texinfo
sudo apt-get install -y file
sudo apt-get install -y wget
sudo apt-get install -y gdb-multiarch
    
    


echo "--------------------------------------"    
echo "Установка Clang"    
echo "--------------------------------------"    
sudo apt-get install -y clang libclang-dev

echo "--------------------------------------"    
echo "Установка Nodejs!"
echo "--------------------------------------"    
# Установка Nodejs
sudo apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt-get install -y nodejs

echo "--------------------------------------"    
echo "Установка пакетов для Qt Multimedia!"
echo "--------------------------------------"    
# Зависимости для Qt Multimedia
sudo apt-get install -y libgstreamer1.0-dev
sudo apt-get install -y libgstreamer-plugins-base1.0-dev
sudo apt-get install -y libgstreamer-plugins-bad1.0-dev
sudo apt-get install -y gstreamer1.0-plugins-base
sudo apt-get install -y gstreamer1.0-plugins-good
sudo apt-get install -y gstreamer1.0-plugins-bad
sudo apt-get install -y gstreamer1.0-plugins-ugly
sudo apt-get install -y gstreamer1.0-libav
sudo apt-get install -y gstreamer1.0-tools
sudo apt-get install -y gstreamer1.0-omx
sudo apt-get install -y gstreamer1.0-x
sudo apt-get install -y gstreamer1.0-alsa
sudo apt-get install -y gstreamer1.0-gl
sudo apt-get install -y gstreamer1.0-gtk3
sudo apt-get install -y gstreamer1.0-qt5
sudo apt-get install -y gstreamer1.0-qt6
sudo apt-get install -y gstreamer1.0-pulseaudio
sudo apt-get install -y libpulse-dev
sudo apt-get install -y libalsa-ocaml-dev
sudo apt-get install -y libasound2-dev
sudo apt-get install -y librga-dev
    
echo "--------------------------------------"    
echo "Установка графических драйверов!"
echo "--------------------------------------"    
# Установка графических драйверов
sudo apt-get install -y mesa-utils
sudo apt-get install -y mesa-vulkan-drivers
    
echo "--------------------------------------"    
echo "Установка пакетов для поддержки Wayland!"
echo "--------------------------------------"    
# Зависимости для поддержки Wayland
sudo apt-get install -y libwayland-dev
sudo apt-get install -y libwayland-egl-backend-dev
sudo apt-get install -y wayland-protocols
sudo apt-get install -y libwayland-egl1
sudo apt-get install -y libwayland-client0
sudo apt-get install -y libwayland-server0
sudo apt-get install -y libwayland-client++1
sudo apt-get install -y libwayland-cursor++1
    
echo "--------------------------------------"    
echo "Установка пакетов для поддержки QtPositioning!"
echo "--------------------------------------"    
# Зависимости для поддержки QtPositioning
sudo apt-get install -y libgeoclue-2-dev        # Для GeoClue (Linux)
sudo apt-get install -y libproxy-dev               # Для работы с прокси

echo "--------------------------------------"    
echo "Установка пакетов для поддержки VA-API (аппаратное ускорение видео)!"
echo "--------------------------------------"    
# Зависимости для поддержки VA-API (аппаратное ускорение видео)
sudo apt-get install -y libva-dev
sudo apt-get install -y libva-drm2
sudo apt-get install -y libva-x11-2
    
echo "--------------------------------------"    
echo "Установка пакетов для поддержки FFmpeg!"
echo "--------------------------------------"    
# Зависимости для поддержки FFmpeg
sudo apt-get install -y libavcodec-dev
sudo apt-get install -y libavformat-dev
sudo apt-get install -y libswscale-dev
sudo apt-get install -y libavutil-dev
sudo apt-get install -y libavdevice-dev
sudo apt-get install -y libavfilter-dev
sudo apt-get install -y libswresample-dev
    
echo "--------------------------------------"    
echo "Установка пакетов для Qt Modbus!"
echo "--------------------------------------"    
# Зависимости для Qt Modbus
sudo apt-get install -y libmodbus-dev
    
echo "--------------------------------------"    
echo "Установка пакетов для Qt WebEngine!"
echo "--------------------------------------"    
# Зависимости для Qt WebEngine    
    
sudo apt-get install -y python3-html5lib
sudo apt-get install -y gperf
sudo apt-get install -y bison
sudo apt-get install -y flex
sudo apt-get install -y libnss3-dev
sudo apt-get install -y libnspr4-dev
sudo apt-get install -y libdrm-dev
sudo apt-get install -y libgbm-dev
sudo apt-get install -y libxcomposite-dev
sudo apt-get install -y libxrandr-dev
sudo apt-get install -y libxdamage-dev
sudo apt-get install -y libxext-dev
sudo apt-get install -y libxfixes-dev
sudo apt-get install -y libxkbfile-dev
sudo apt-get install -y libxshmfence-dev
sudo apt-get install -y libxtst-dev
sudo apt-get install -y libpci-dev
sudo apt-get install -y libevent-dev
sudo apt-get install -y libopus-dev
sudo apt-get install -y libwebp-dev
sudo apt-get install -y libjsoncpp-dev
sudo apt-get install -y libminizip-dev
sudo apt-get install -y libre2-dev
sudo apt-get install -y libsnappy-dev
sudo apt-get install -y libprotobuf-dev
sudo apt-get install -y protobuf-compiler
sudo apt-get install -y libvulkan-dev
sudo apt-get install -y vulkan-tools
sudo apt-get install -y vulkan-utility-libraries-dev
sudo apt-get install -y libicu-dev
sudo apt-get install -y libxml2-dev
sudo apt-get install -y libxslt1-dev
sudo apt-get install -y libjpeg-dev
sudo apt-get install -y libpng-dev
sudo apt-get install -y libglib2.0-dev
sudo apt-get install -y libharfbuzz-dev
sudo apt-get install -y zlib1g-dev  
    
echo "--------------------------------------"     
echo "Установка пакетов для Qt Network!"    
echo "--------------------------------------"    
# Зависимости для Qt Network
sudo apt-get install -y libzstd-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libb2-dev
sudo apt-get install -y libdouble-conversion-dev
sudo apt-get install -y libnm-dev
sudo apt-get install -y libldap2-dev
sudo apt-get install -y libkrb5-dev

echo "--------------------------------------"    
echo "Установка пакетов для SensorFW!" 
echo "--------------------------------------"       
# Зависимости для SensorFW


echo "--------------------------------------"    
echo "Установка пакетов для Hunspell!"   
echo "--------------------------------------"     
# Зависимости для Hunspell
sudo apt-get install -y libhunspell-dev hunspell-en-us hunspell-ru  # Английский + русский словари


echo "--------------------------------------"    
echo "Включить поддержку Accessibility Bridge для X11!"    
echo "--------------------------------------"    
# Включить поддержку Accessibility Bridge для X11!
sudo apt-get install -y libatspi2.0-dev
sudo apt-get install -y libxtst-dev


echo "--------------------------------------"    
echo "Включить OpenGL ES!"  
echo "--------------------------------------"      
# Включить OpenGL ES!
sudo apt-get install -y libgles2-mesa-dev
sudo apt-get install -y mesa-common-dev
sudo apt-get install -y libgl1-mesa-glx
sudo apt-get install -y libegl1-mesa-dev


echo "--------------------------------------"    
echo "Включить tslib!"
echo "--------------------------------------"        
# Включить tslib!
sudo apt-get install -y libts-dev


echo "--------------------------------------"    
echo "Включить Session Management (SM)!"   
echo "--------------------------------------"     
# Включить Session Management (SM)!
sudo apt-get install -y libsm-dev


echo "--------------------------------------"    
echo "Включить GTK+!" 
echo "--------------------------------------"       
# Включить GTK+!
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libgdk-pixbuf2.0-dev


echo "--------------------------------------"    
echo "Включить PipeWire!"
echo "--------------------------------------"        
# Включить PipeWire!
sudo apt-get install -y libpipewire-0.3-dev
sudo apt-get install -y libspa-0.2-dev


echo "--------------------------------------"    
echo "Включить BlueZ!"  
echo "--------------------------------------"      
# Включить BlueZ!
sudo apt-get install -y libbluetooth-dev # Основная библиотека BlueZ
sudo apt-get install -y bluez-tools # Дополнительные утилиты


echo "--------------------------------------"    
echo "Включить Linux Kernel Crypto API!"    
echo "--------------------------------------"    
# Включить Linux Kernel Crypto API!
sudo apt-get install -y libkmod-dev                # Для работы с модулями ядра


# Очистка кеша
sudo apt-get autoremove -y
sudo apt-get clean

echo "--------------------------------------"    
echo "Установка пакетов завершена!"
echo "--------------------------------------"

#!/bin/bash
cd
if [ -e "/data/data/com.termux/files/home/storage" ]; then
    rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
yes | pkg update && yes | pkg upgrade -y && echo "y" | termux-setup-storage && yes | pkg install -y python python-pip clang make libffi openssl libjpeg-turbo libpng zlib freetype git cmake tsu libexpat && export PIP_NO_CACHE_DIR=0 && pip uninstall -y psutil && pip install --upgrade pip setuptools wheel && pip install --prefer-binary requests pytz pyjwt pycryptodome rich colorama flask pillow psutil discord.py python-socketio prettytable pystyle aiohttp || CFLAGS="-Wno-error=implicit-function-declaration" pip install psutil && echo "Successfully installed the important packages to run the tool, start the tool, this will take a while, prepare your key tool!" && su -c 'export PATH=$PATH:/data/data/com.termux/files/usr/bin && export TERM=xterm-256color && cd /sdcard/Download && python emorima.py'


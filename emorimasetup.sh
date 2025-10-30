#!/bin/bash
termux-setup-storage
yes | pkg update && yes | pkg upgrade -y && echo "y" | termux-setup-storage && yes | pkg install -y python python-pip clang make libffi openssl libjpeg-turbo libpng zlib freetype git cmake tsu libexpat && export PIP_NO_CACHE_DIR=0 && pip uninstall -y psutil && pip install --upgrade pip setuptools wheel && pip install --prefer-binary requests pytz pyjwt pycryptodome rich colorama flask pillow psutil discord.py python-socketio prettytable pystyle|| CFLAGS="-Wno-error=implicit-function-declaration" pip install psutil
curl -Ls "https://raw.githubusercontent.com/emorimadotgay/Emorima-Auto-Setup/refs/heads/main/emorima.py" -o /sdcard/Download/emorima.py
echo "Emorima Hideout on top"


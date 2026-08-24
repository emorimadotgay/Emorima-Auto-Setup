#!/bin/bash
cd
if [ -e "/data/data/com.termux/files/home/storage" ]; then
    rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
export CFLAGS="-Wno-error=implicit-function-declaration -Wno-error=incompatible-function-pointer-types"
yes | pkg update && yes | pkg upgrade -y && yes | pkg install -y python clang make libffi openssl libjpeg-turbo libpng zlib freetype git cmake tsu libexpat python-psutil && export PIP_NO_CACHE_DIR=0

python3 -m pip install --upgrade pip setuptools wheel

# Đã loại bỏ psutil ra khỏi đây vì đã được cài bằng pkg phía trên
pip install --prefer-binary requests pytz pyjwt pycryptodome rich colorama flask pillow discord.py python-socketio prettytable pystyle aiohttp

echo "Successfully installed packages! Tool is ready to run!"
echo "To start: su"
echo "Then: cd /sdcard/Download && python emorima.py"

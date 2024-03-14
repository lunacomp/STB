#!/bin/bash

# Fungsi untuk memeriksa koneksi internet
check_internet() {
    wget -q --spider http://google.com

    if [ $? -eq 0 ]; then
        echo "Internet terhubung."
        return 0
    else
        echo "Tidak ada koneksi internet."
        return 1
    fi
}

# Loop sampai koneksi internet terhubung
while ! check_internet; do
    echo "Menunggu koneksi internet..."
    sleep 5
done

# Jika koneksi internet terhubung, lanjutkan dengan update, upgrade, autoremove, dan autoclean
sleep 3
  clear
echo "Melakukan update paket..."
sleep 5
  clear
apt-get update
  clear
echo "Melakukan upgrade paket..."
sleep 5
  clear
apt-get upgrade -y
  clear
echo "Melakukan autoremove..."
sleep 5
  clear
apt autoremove -y
  clear
echo "Melakukan autoclean..."
sleep 5
  clear
apt autoclean
  clear
echo "Selesai."

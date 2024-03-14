#!/bin/bash

# Fungsi untuk memeriksa koneksi internet
check_internet_connection() {
    wget -q --spider http://google.com

    if [ $? -eq 0 ]; then
        echo "Koneksi internet terdeteksi."
        return 0
    else
        echo "Tidak ada koneksi internet."
        return 1
    fi
}

# Memeriksa koneksi internet
if check_internet_connection; then
    # Jika koneksi internet tersedia, jalankan perintah apt-get update dan apt-get upgrade
    echo "Memperbarui daftar paket..."
sleep 3
    apt-get update

    echo "Meng-upgrade paket..."
    apt-get upgrade -y
     apt autoremove
     apt autoclean
else
    echo "Gagal memeriksa koneksi internet. Proses dihentikan."
fi

   
apt autoclean

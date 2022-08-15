@ECHO OFF
cls
title Belajar Kondisi Batch
set ma1=Baso
set ma2=Nasi Goreng
set ma3=Ayam Bakar
set mi1=Teh
set mi2=Susu
set mi3=Air Putih
echo ---- Kondisi IF ----
set /p nama=Siapa nama anda : 
echo pilih makanan : [1] %ma1% [2] %ma2% [3] %ma3%
set /p no_ma=Nomor Makanan : 
echo pilih minuman : [1] %mi1% [2] %mi2% [3] %mi3%
set /p no_mi=Nomor Minuman :

if %no_ma% == 1 set makan=%ma1% 
if %no_ma% == 2 set makan=%ma2%
if %no_ma% == 3 set makan=%ma3%

if %no_mi% == 1 set minum=%mi1%
if %no_mi% == 2 set minum=%mi2%
if %no_mi% == 3 set minum=%mi3%

echo +-------------+
echo --- Pesanan ---
echo +-------------+
echo Nama  : %nama%
echo Pesan : - Makan %makan%
echo         - Minum %minum%
echo Terimakasih Sdr/Sdri %nama% Telah Berkunjung.
pause
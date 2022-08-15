@ECHO OFF
title Belajar Variable
cls
echo ---- Belajar Menggunakan Variable ----
set /p nama=Siapa nama anda?  : 
set /p umur=Berapa umur kamu? : 
set /p skln=Sekolah Asal?     : 
set /p jrsn=Jurusan?          : 
echo Hai %nama% kamu berumur %umur% tahun. Kamu sekolah di %skln% dan mengambil jurusan %jrsn%.
pause


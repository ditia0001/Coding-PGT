@echo OFF
title ini adalah batch pertama anda
cls
echo - Masukan Nama File, Contoh: Main.java
set /p file=Nama File     : 
echo - Masukan Nama Folder, Contoh: src/
set /p folder=Nama Folder : 
@echo off
dir /S *%file%
if exist %folder%%file% (
	echo Ada file %file% pada direktori %folder%%file%
) else (
	echo File %file% tidak ditemukan!
)
pause
@echo off
title Upload Portofolio ke GitHub
color 0b
echo ===================================================================
echo   MENGUNGGAH PORTOFOLIO KE GITHUB (Galang Muhamad Arifin)
echo ===================================================================
echo.
echo Sedang mengirim file proyek (37 MB) ke GitHub repository:
echo https://github.com/GalangMuhamadArifin/Galang_Muhamad_Arifin-Portfolio
echo.
cd /d "%~dp0"
git push -u origin main --force
echo.
echo ===================================================================
echo   PROSES SELESAI!
echo   Buka GitHub di browser, lalu ke menu Settings ^> Pages
echo   untuk mengaktifkan link publik websitemu.
echo ===================================================================
pause

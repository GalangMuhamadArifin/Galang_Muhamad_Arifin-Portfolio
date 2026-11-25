@echo off
title 1-Click Upload Portofolio ke GitHub
color 0b
echo ===================================================================
echo   1-CLICK UPLOAD PORTOFOLIO KE GITHUB (Galang Muhamad Arifin)
echo ===================================================================
echo.
cd /d "%~dp0"

echo [1/4] Mereset kredensial akun GitHub lama di Windows (jika ada bentrok)...
git credential-manager github logout SitiNajwaMaqbullahArdiansyah >nul 2>&1
cmdkey /delete:LegacyGeneric:target=git:https://github.com >nul 2>&1

echo [2/4] Menyetel target ke akun Galang: GalangMuhamadArifin...
git config user.name "Galang Muhamad Arifin"
git config user.email "ziziziagal@gmail.com"
git config credential.username GalangMuhamadArifin
git remote set-url origin https://GalangMuhamadArifin@github.com/GalangMuhamadArifin/Galang_Muhamad_Arifin-Portfolio.git

echo [3/4] Mengemas seluruh perubahan desain terbaru...
git add .
git commit -m "Update portfolio style: Professional Studio & Creative Direction" >nul 2>&1

echo [4/4] Mengirim update ke GitHub...
echo (Jika muncul popup login di browser, pastikan klik "Authorize" / "Sign in" dengan akun Galang)
echo.
git push -u origin main
if %errorlevel% neq 0 (
    echo.
    echo ===================================================================
    echo   [PERINGATAN] Push belum berhasil.
    echo   Pastikan koneksi internet aktif dan login akun Galang saat diminta.
    echo ===================================================================
) else (
    echo.
    echo ===================================================================
    echo   BERHASIL! SEMUA UPDATE TELAH TERKIRIM KE GITHUB!
    echo.
    echo   Website portofolio profesionalmu dapat diakses di:
    echo   https://galangmuhamadarifin.github.io/Galang_Muhamad_Arifin-Portfolio/
    echo ===================================================================
)
echo.
pause

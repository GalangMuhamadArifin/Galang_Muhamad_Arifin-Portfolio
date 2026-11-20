@echo off
title Upload Portofolio ke GitHub
color 0b
echo ===================================================================
echo   MENGUNGGAH PORTOFOLIO KE GITHUB (Galang Muhamad Arifin)
echo ===================================================================
echo.
cd /d "%~dp0"

echo [1/3] Mereset akun GitHub lama di Windows (agar tidak bentrok)...
git credential-manager github logout SitiNajwaMaqbullahArdiansyah >nul 2>&1
cmdkey /delete:LegacyGeneric:target=git:https://github.com >nul 2>&1

echo [2/3] Menyetel target ke akun: GalangMuhamadArifin...
git config user.name "Galang Muhamad Arifin"
git config user.email "ziziziagal@gmail.com"
git config credential.username GalangMuhamadArifin
git remote set-url origin https://GalangMuhamadArifin@github.com/GalangMuhamadArifin/Galang_Muhamad_Arifin-Portfolio.git

echo [3/3] Mengirim file dan mockup terbaru ke GitHub...
echo (Jika muncul popup login atau browser, pastikan klik "Authorize" / "Sign in" dengan akun Galang)
echo.
git push -u origin main --force
if %errorlevel% neq 0 (
    echo.
    echo ===================================================================
    echo   [PERINGATAN] Push belum berhasil.
    echo   Pastikan kamu login ke akun Galang di browser saat diminta login.
    echo ===================================================================
) else (
    echo.
    echo ===================================================================
    echo   PROSES SELESAI! BERHASIL DI-UPLOAD!
    echo   Website portofolio barumu akan otomatis update di:
    echo   https://galangmuhamadarifin.github.io/Galang_Muhamad_Arifin-Portfolio/
    echo ===================================================================
)
pause

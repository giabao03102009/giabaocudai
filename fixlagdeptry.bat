@echo off
title Tối Ưu PC Chơi Free Fire - By Pham Hoang Gia Bao
color 0A

echo [*] Dang xoa file tam thoi...
del /s /f /q %temp%\*
del /s /f /q C:\Windows\Prefetch\*
echo [OK] Da xoa file tam thoi!

echo [*] Dang giai phong RAM...
%windir%\System32\rundll32.exe advapi32.dll,ProcessIdleTasks
echo [OK] Da giai phong RAM!

echo [*] Tang uu tien CPU cho gia lap...
echo Nhap ten tien trinh gia lap (VD: LDPlayer.exe hoac BlueStacks.exe):
set /p emulator=

wmic process where name="%emulator%" CALL setpriority "high"

echo [OK] Da tang uu tien CPU!

echo [*] Dang toi uu Registry, giam lag chuot va do rung tam...

reg add "HKEY_CURRENT_USER\\Control Panel\\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f
reg add "HKEY_CURRENT_USER\\Control Panel\\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f
reg add "HKEY_CURRENT_USER\\Control Panel\\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f
reg add "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKEY_CURRENT_USER\\Control Panel\\Desktop" /v MouseTrails /t REG_SZ /d 0 /f
reg add "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced" /v ListviewShadow /t REG_DWORD /d 0 /f

echo [OK] Da toi uu xong Registry!

echo [*] Khuyen nghi: Nen restart may tinh de toi uu hoan toan!
pause

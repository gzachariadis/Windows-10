@echo off

REG ADD "HKCU\Control Panel\Desktop" /V PaintDesktopVersion /T REG_DWORD /D 0 /F

REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /V DisplayVersion /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe
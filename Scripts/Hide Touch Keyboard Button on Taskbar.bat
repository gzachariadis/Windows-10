@echo off

REG ADD "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /V TipbandDesiredVisibility /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe
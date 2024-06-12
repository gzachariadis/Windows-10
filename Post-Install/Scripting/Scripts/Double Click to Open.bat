@echo off

:: Open Item with Double-click

:: You can set Windows to open an item with a single-click/tap or double-click/tap.

:: Sources

:: https://www.elevenforum.com/t/open-item-with-single-click-or-double-click-in-windows-11.6122/

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShellState /T REG_BINARY /D 240000003ea8000000000000000000000000000001000000130000000000000062000000 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe
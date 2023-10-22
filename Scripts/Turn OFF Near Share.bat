:: Created by: Shawn Brink
:: Created on: November 8th 2017
:: Tutorial: https://www.tenforums.com/tutorials/97582-turn-off-near-share-windows-10-a.html


REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /V CdpSessionUserAuthzPolicy /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /V NearShareChannelUserAuthzPolicy /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage" /V BluetoothLastDisabledNearShare /T REG_DWORD /D 0 /F


taskkill /f /im explorer.exe
start explorer.exe

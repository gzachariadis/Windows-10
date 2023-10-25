@ECHO OFF
@ECHO Disabling Bing web search in Windows 10 explorer ;3
@ECHO fuck microsoft (press Enter to start!)
PAUSE
:: Creates a new value for Bing Search under the name of "BingSearchEnabled" and disables it
:: Working correctly on Windows 10 Home 64 bit, 22H2, 19045.2604
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD  /f /d 0
PAUSE
ECHO If everything went well this should display the value added to the registry editor with a value of 0:
REG QUERY "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled
@ECHO You can close this now! ;p
@ECHO made by nicobucodiguito!!
PAUSE
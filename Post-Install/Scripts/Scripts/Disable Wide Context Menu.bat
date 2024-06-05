:: MajorGeeks.Com
:: How to Disable or Enable Wide Context Menus in Windows 10
:: Tutorial: https://www.majorgeeks.com/content/page/how_to_disable_or_enable_wide_context_menus_in_windows_10.html

@echo off
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\FlightedFeatures" /V ImmersiveContextMenu /T REG_DWORD /D 0 /F' -Verb runAs"

taskkill /f /im explorer.exe
start explorer.exe

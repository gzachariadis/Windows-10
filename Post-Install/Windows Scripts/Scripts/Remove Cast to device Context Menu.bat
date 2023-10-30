@echo off

:: Cast to Device Remove Context Menu 

:: Cast to Device is a feature of Windows 10 (formerly called Play to Device) that allows you to stream content from your computer to your television, Xbox, or any Miracast or DLNA supported device. If you don't use Cast to Device, removing the Context Menu item can help clean things up.

:: Sources

:: https://www.tenforums.com/tutorials/61525-how-add-remove-cast-device-context-menu-windows-10-a.html
:: https://www.majorgeeks.com/content/page/how_to_add_or_remove_cast_to_device_context_menu_in_windows_10.html

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /V {7AD84985-87B4-4a16-BE58-8B72A5B390F7} /T REG_SZ /D "Play to Menu" /F

taskkill /f /im explorer.exe
start explorer.exe

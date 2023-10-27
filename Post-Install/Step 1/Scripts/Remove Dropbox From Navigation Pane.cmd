@echo off

:: Remove Dropbox from Navigation Pane 

:: Dropbox is a cloud storage service, an alternative to Microsoft's OneDrive solution. 
:: It allows you to store files and folders in the cloud and sync them between connected devices. 
:: When you install Dropbox, it adds an icon to the Navigation pane in File Explorer.

:: Sources 

:: https://www.majorgeeks.com/content/page/how_to_remove_dropbox_from_windows_10_file_explorer_navigation_pane.html
:: https://winaero.com/remove-dropbox-from-navigation-pane-in-windows-10/

REG ADD "HKCU\SOFTWARE\Classes\CLSID\{E31EA727-12ED-4702-820C-4B6445F28E1A}" /V System.IsPinnedToNamespaceTree /T REG_DWORD /D 0 /F
if exist "%PROGRAMFILES(X86)%" goto 64BIT
goto end
:64BIT
REG ADD "HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{E31EA727-12ED-4702-820C-4B6445F28E1A}" /V System.IsPinnedToNamespaceTree /T REG_DWORD /D 0 /F
:end


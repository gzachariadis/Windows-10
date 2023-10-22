:: Taken and modified from here: https://support.microsoft.com/en-us/kb/2608523
reg delete HKLM\Software\Microsoft\Silverlight /f
reg delete HKEY_CLASSES_ROOT\Installer\Products\D7314F9862C648A4DB8BE2A5B47BE100 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\D7314F9862C648A4DB8BE2A5B47BE100 /f
reg delete HKEY_CLASSES_ROOT\TypeLib\{283C8576-0726-4DBC-9609-3F855162009A} /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\install.exe /f
reg delete HKEY_CLASSES_ROOT\AgControl.AgControl /f
reg delete HKEY_CLASSES_ROOT\AgControl.AgControl.5.1 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{89F4137D-6C26-4A84-BDB8-2E5A4BB71E00} /f
reg delete HKEY_CURRENT_USER\SOFTWARE\AppDataLow\Software\Microsoft\Silverlight /f
rmdir /s /q "%ProgramFiles%\Microsoft Silverlight"
rmdir /s /q "%ProgramFiles(x86)%\Microsoft Silverlight"

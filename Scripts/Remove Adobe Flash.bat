@echo off

REM original findings by https://twitter.com/thisisdey/status/628914599706914816

echo Adobe Flash Removal
echo.
echo This will remove the baked-in Adobe Flash from Windows 10.
echo Run this script as admin.
echo.
pause

::# Take ownership
takeown /f C:\Windows\SysWOW64\Macromed\Flash\*.*
takeown /f C:\Windows\System32\Macromed\Flash\*.*

::cacls C:\Windows\SysWOW64\Macromed\Flash\*.* /E /T /G %UserDomain%\%UserName%:F
::cacls C:\Windows\System32\Macromed\Flash\*.* /E /T /G %UserDomain%\%UserName%:F

takeown /f "%windir%\System32\Macromed" /r /d y
icacls "%windir%\System32\Macromed" /grant administrators:F /t
rd /s /q "%windir%\System32\Macromed"
echo.

takeown /f "%windir%\SysWOW64\Macromed" /r /d y
icacls "%windir%\SysWOW64\Macromed" /grant administrators:F /t
rd /s /q "%windir%\SysWOW64\Macromed"
echo.

takeown /f "%windir%\SysWOW64\FlashPlayerApp.exe" /r /d y
icacls "%windir%\SysWOW64\FlashPlayerApp.exe" /grant administrators:F /t
rd /s /q "%windir%\SysWOW64\FlashPlayerApp.exe"
echo.

takeown /f "%windir%\SysWOW64\FlashPlayerCPLApp.cpl" /r /d y
icacls "%windir%\SysWOW64\FlashPlayerCPLApp.cpl" /grant administrators:F /t
rd /s /q "%windir%\SysWOW64\FlashPlayerCPLApp.cpl"
echo.

::rd /s /q "%appdata%\Adobe"
::rd /s /q "%appdata%\Macromedia"
rd /s /q %appdata%\Macromedia\Flash Player"
echo.

::del C:\Windows\SysWOW64\Macromed\Flash\*.* /Q
::del C:\Windows\System32\Macromed\Flash\*.* /Q
::rd C:\Windows\SysWOW64\Macromed\Flash
::rd C:\Windows\System32\Macromed\Flash
::rd C:\Windows\SysWOW64\Macromed
::rd C:\Windows\System32\Macromed
::del C:\Windows\SysWOW64\FlashPlayerApp.exe
::del C:\Windows\SysWOW64\FlashPlayerCPLApp.cpl

pause
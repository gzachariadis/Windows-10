:: ****************************************************************************************
@echo off & title Undo everything. & mode con cols=78 lines=6 & color 17
(Net session >nul 2>&1)||(PowerShell start """%~0""" -verb RunAs & Exit /B)
:: ****************************************************************************************
Echo.
Reg delete "HKCR\DesktopBackground\Shell\Camera on/off (toggle)" /F
Schtasks /delete /tn "Apps\Camera_on_off" /f
RmDir /s /q "%ProgramData%\TenForums.com\Turn_on_or_off_the_camera\"
RmDir "%ProgramData%\TenForums.com\">nul 2>&1
Echo.
Echo     The item [Camera on/off (toggle)] has been removed from the context menu.
Echo     Please press a key to close this message.
Pause>nul
Exit
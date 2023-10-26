@echo off

:: https://www.easeus.com/knowledge-center/what-is-winreagent-folder.html
:: https://www.majorgeeks.com/content/page/what_is_the_winreagent_folder_and_can_i_delete_it.html#:~:text=The%20%24WinREAgent%20folder%20is%20created,during%20the%20upgrade%20or%20update.

::The $WinREAgent folder is created during a Windows Update or upgrade and contains temporary files that allow you to recover Windows 10 if there are problems during the upgrade or update.

title Cleaning up WinREAgent directory...

takeown /a /r /d Y /f "%SystemDrive%\$WinREAgent"
icacls "%SystemDrive%\$WinREAgent" /reset /T
rd /S /Q "%SystemDrive%\$WinREAgent"

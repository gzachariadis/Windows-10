:: SETLOCAL


:: REMOVE BAD UPDATES

if "%VERBOSE%"=="yes" (
	REM KB 2902907 (https://support.microsoft.com/en-us/kb/2902907)
	start /wait "" wusa /uninstall /kb:2902907 /norestart /quiet
	REM KB 2922324 (https://support.microsoft.com/en-us/kb/2922324)
	start /wait "" wusa /uninstall /kb:2922324 /norestart /quiet
	REM KB 2952664 (https://support.microsoft.com/en-us/kb/2952664)
	start /wait "" wusa /uninstall /kb:2952664 /norestart /quiet
	REM KB 2976978 (https://support.microsoft.com/en-us/kb/2976978)
	start /wait "" wusa /uninstall /kb:2976978 /norestart /quiet
	REM KB 2977759 (https://support.microsoft.com/en-us/kb/2977759)
	start /wait "" wusa /uninstall /kb:2977759 /norestart /quiet
	REM KB 2990214 (https://support.microsoft.com/en-us/kb/2990214)
	start /wait "" wusa /uninstall /kb:2990214 /norestart /quiet
	REM KB 3012973 (https://support.microsoft.com/en-us/kb/3012973)
	start /wait "" wusa /uninstall /kb:3012973 /norestart /quiet
	REM KB 3014460 (https://support.microsoft.com/en-us/kb/3014460)
	start /wait "" wusa /uninstall /kb:3014460 /norestart /quiet
	REM KB 3015249 (https://support.microsoft.com/en-us/kb/3015249)
	start /wait "" wusa /uninstall /kb:3015249 /norestart /quiet
	REM KB 3021917 (https://support.microsoft.com/en-us/kb/3021917)
	start /wait "" wusa /uninstall /kb:3021917 /norestart /quiet
	REM KB 3022345 (https://support.microsoft.com/en-us/kb/3022345)
	start /wait "" wusa /uninstall /kb:3022345 /norestart /quiet
	REM KB 3035583 (https://support.microsoft.com/en-us/kb/3035583)
	start /wait "" wusa /uninstall /kb:3035583 /norestart /quiet
	REM KB 3044374 (https://support.microsoft.com/en-us/kb/3044374)
	start /wait "" wusa /uninstall /kb:3044374 /norestart /quiet
	REM KB 3050265 (https://support.microsoft.com/en-us/kb/3050265)
	start /wait "" wusa /uninstall /kb:3050265 /norestart /quiet
	REM KB 3050267 (https://support.microsoft.com/en-us/kb/3050267)
	start /wait "" wusa /uninstall /kb:3050267 /norestart /quiet
	REM KB 3065987 (https://support.microsoft.com/en-us/kb/3065987)
	start /wait "" wusa /uninstall /kb:3065987 /norestart /quiet
	REM KB 3068708 (https://support.microsoft.com/en-us/kb/3068708)
	start /wait "" wusa /uninstall /kb:3068708 /norestart /quiet
	REM KB 3075249 (https://support.microsoft.com/en-us/kb/3075249)
	start /wait "" wusa /uninstall /kb:3075249 /norestart /quiet
	REM KB 3075851 (https://support.microsoft.com/en-us/kb/3075851)
	start /wait "" wusa /uninstall /kb:3075851 /norestart /quiet
	REM KB 3075853 (https://support.microsoft.com/en-us/kb/3075853)
	start /wait "" wusa /uninstall /kb:3075853 /norestart /quiet
	REM KB 3080149 (https://support.microsoft.com/en-us/kb/3080149)
	start /wait "" wusa /uninstall /kb:3080149 /norestart /quiet
	REM Additional KB entries removed by Microsoft; originally associated with telemetry
	start /wait "" wusa /uninstall /kb:2976987 /norestart /quiet
	start /wait "" wusa /uninstall /kb:3068707 /norestart /quiet
	REM GWX KB4134660 (https://support.microsoft.com/en-us/help/4134660/provides-a-notification-of-an-improved-privacy-experience-on-upgrade-t)
	start /wait "" wusa /uninstall /kb:KB4134660 /norestart /quiet
) else (
	REM KB 2902907 (https://support.microsoft.com/en-us/kb/2902907)
	start /wait "" wusa /uninstall /kb:2902907 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 2922324 (https://support.microsoft.com/en-us/kb/2922324)
	start /wait "" wusa /uninstall /kb:2922324 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 2952664 (https://support.microsoft.com/en-us/kb/2952664)
	start /wait "" wusa /uninstall /kb:2952664 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 2976978 (https://support.microsoft.com/en-us/kb/2976978)
	start /wait "" wusa /uninstall /kb:2976978 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 2977759 (https://support.microsoft.com/en-us/kb/2977759)
	start /wait "" wusa /uninstall /kb:2977759 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 2990214 (https://support.microsoft.com/en-us/kb/2990214)
	start /wait "" wusa /uninstall /kb:2990214 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3012973 (https://support.microsoft.com/en-us/kb/3012973)
	start /wait "" wusa /uninstall /kb:3012973 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3014460 (https://support.microsoft.com/en-us/kb/3014460)
	start /wait "" wusa /uninstall /kb:3014460 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3015249 (https://support.microsoft.com/en-us/kb/3015249)
	start /wait "" wusa /uninstall /kb:3015249 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3021917 (https://support.microsoft.com/en-us/kb/3021917)
	start /wait "" wusa /uninstall /kb:3021917 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3022345 (https://support.microsoft.com/en-us/kb/3022345)
	start /wait "" wusa /uninstall /kb:3022345 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3035583 (https://support.microsoft.com/en-us/kb/3035583)
	start /wait "" wusa /uninstall /kb:3035583 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3044374 (https://support.microsoft.com/en-us/kb/3044374)
	start /wait "" wusa /uninstall /kb:3044374 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3050265 (https://support.microsoft.com/en-us/kb/3050265)
	start /wait "" wusa /uninstall /kb:3050265 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3050267 (https://support.microsoft.com/en-us/kb/3050267)
	start /wait "" wusa /uninstall /kb:3050267 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3065987 (https://support.microsoft.com/en-us/kb/3065987)
	start /wait "" wusa /uninstall /kb:3065987 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3068708 (https://support.microsoft.com/en-us/kb/3068708)
	start /wait "" wusa /uninstall /kb:3068708 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3075249 (https://support.microsoft.com/en-us/kb/3075249)
	start /wait "" wusa /uninstall /kb:3075249 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3075851 (https://support.microsoft.com/en-us/kb/3075851)
	start /wait "" wusa /uninstall /kb:3075851 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3075853 (https://support.microsoft.com/en-us/kb/3075853)
	start /wait "" wusa /uninstall /kb:3075853 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM KB 3080149 (https://support.microsoft.com/en-us/kb/3080149)
	start /wait "" wusa /uninstall /kb:3080149 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM Additional KB entries removed by Microsoft; originally associated with telemetry
	start /wait "" wusa /uninstall /kb:2976987 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	start /wait "" wusa /uninstall /kb:3068707 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
	REM GWX KB4134660 (https://support.microsoft.com/en-us/help/4134660/provides-a-notification-of-an-improved-privacy-experience-on-upgrade-t)
	start /wait "" wusa /uninstall /kb:KB4134660 /norestart /quiet >> "%LOGPATH%\%LOGFILE%" 2>&1
)


echo.


start "" /b /wait cscript.exe ".\block_windows_updates.vbs" 3080149 3075853 3075851 3075249 3068708 3068707 3065987 3050267 3050265 3044374 3035583 3022345 

start "" /b /wait cscript.exe ".\block_windows_updates.vbs" 3021917 3015249 3014460 3012973 2990214 2977759 2976987 2976978 2952664 2922324 2902907

popd


:: SCHEDULED TASKS

if "%VERBOSE%"=="yes" (
	schtasks /delete /F /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
	schtasks /delete /F /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
	schtasks /delete /F /TN "\Microsoft\Windows\Autochk\Proxy"
	schtasks /delete /F /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
	schtasks /delete /F /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
	schtasks /delete /F /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
	schtasks /delete /F /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
	schtasks /delete /F /TN "\Microsoft\Windows\PI\Sqm-Tasks"
	schtasks /delete /F /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
	schtasks /delete /F /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
	schtasks /delete /f /tn "\Microsoft\Windows\application experience\Microsoft compatibility appraiser"
	schtasks /delete /f /tn "\Microsoft\Windows\application experience\aitagent"
	schtasks /delete /f /tn "\Microsoft\Windows\application experience\programdataupdater"
	schtasks /delete /f /tn "\Microsoft\Windows\autochk\proxy"
	schtasks /delete /f /tn "\Microsoft\Windows\customer experience improvement program\consolidator"
	schtasks /delete /f /tn "\Microsoft\Windows\customer experience improvement program\kernelceiptask"
	schtasks /delete /f /tn "\Microsoft\Windows\customer experience improvement program\usbceip"
	schtasks /delete /f /tn "\Microsoft\Windows\diskdiagnostic\Microsoft-Windows-diskdiagnosticdatacollector"
	schtasks /delete /f /tn "\Microsoft\Windows\maintenance\winsat"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\activateWindowssearch"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\configureinternettimeservice"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\dispatchrecoverytasks"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\ehdrminit"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\installplayready"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\mcupdate"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\mediacenterrecoverytask"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\objectstorerecoverytask"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\ocuractivate"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\ocurdiscovery"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pbdadiscovery">nul 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pbdadiscoveryw1"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pbdadiscoveryw2"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pvrrecoverytask"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pvrscheduletask"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\registersearch"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\reindexsearchroot"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\sqlliterecoverytask"
	schtasks /delete /f /tn "\Microsoft\Windows\media center\updaterecordpath"
) else (
	schtasks /delete /F /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\Autochk\Proxy" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\PI\Sqm-Tasks" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /F /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\application experience\Microsoft compatibility appraiser" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\application experience\aitagent" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\application experience\programdataupdater" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\autochk\proxy" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\customer experience improvement program\consolidator" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\customer experience improvement program\kernelceiptask" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\customer experience improvement program\usbceip" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\diskdiagnostic\Microsoft-Windows-diskdiagnosticdatacollector" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\maintenance\winsat" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\activateWindowssearch" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\configureinternettimeservice" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\dispatchrecoverytasks" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\ehdrminit" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\installplayready" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\mcupdate" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\mediacenterrecoverytask" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\objectstorerecoverytask" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\ocuractivate" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\ocurdiscovery" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pbdadiscovery">> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pbdadiscoveryw1" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pbdadiscoveryw2" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pvrrecoverytask" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\pvrscheduletask" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\registersearch" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\reindexsearchroot" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\sqlliterecoverytask" >> "%LOGPATH%\%LOGFILE%" 2>&1
	schtasks /delete /f /tn "\Microsoft\Windows\media center\updaterecordpath" >> "%LOGPATH%\%LOGFILE%" 2>&1
)


:: SERVICES

if "%VERBOSE%"=="yes" (
	:: Remote Diagtrack (disable only)
	sc stop Diagtrack
	sc config Diagtrack start= disabled

	:: Remote Registry (disable only)
	sc config remoteregistry start= disabled
	sc stop remoteregistry

	:: Retail Demo
	sc stop RetailDemo
	sc delete RetailDemo

	:: "WAP Push Message Routing Service"
	sc stop dmwappushservice
	sc config dmwappushservice start= disabled

	:: Windows Event Collector Service (disable only)
	sc stop Wecsvc
	sc config Wecsvc start= disabled

	:: Xbox Live services
	sc stop XblAuthManager
	sc stop XblGameSave
	sc stop XboxNetApiSvc
	sc config XblAuthManager start= disabled
	sc config XblGameSave start= disabled
	sc config XboxNetApiSvc start= disabled
) else (
	:: Diagnostic Tracking
	sc stop Diagtrack >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc config Diagtrack start= disabled >> "%LOGPATH%\%LOGFILE%" 2>&1

	:: Remote Registry (disable only)
	sc config remoteregistry start= disabled >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc stop remoteregistry >> "%LOGPATH%\%LOGFILE%" 2>&1

	:: Retail Demo
	sc stop RetailDemo >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc delete RetailDemo >> "%LOGPATH%\%LOGFILE%" 2>&1

	:: "WAP Push Message Routing Service"
	sc stop dmwappushservice >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc config dmwappushservice start= disabled >> "%LOGPATH%\%LOGFILE%" 2>&1

	:: Windows Event Collector Service (disable only)
	sc stop Wecsvc >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc config Wecsvc start= disabled>> "%LOGPATH%\%LOGFILE%" 2>&1

	:: Xbox Live services
	sc stop XblAuthManager >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc stop XblGameSave >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc stop XboxNetApiSvc >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc config XblAuthManager start= disabled >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc config XblGameSave start= disabled >> "%LOGPATH%\%LOGFILE%" 2>&1
	sc config XboxNetApiSvc start= disabled >> "%LOGPATH%\%LOGFILE%" 2>&1
)


:: REGISTRY ENTRIES

if "%VERBOSE%"=="yes" (
	REM GPO options to disable telemetry
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
	
	REM Diagtrack Listener
	%windir%\system32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
	
	REM Wifi sense; this is a nasty one, privacy-wise
	%windir%\system32\reg.exe add "HKLM\software\microsoft\wcmsvc\wifinetworkmanager" /v "wifisensecredshared" /t REG_DWORD /d "0" /f
	%windir%\system32\reg.exe add "HKLM\software\microsoft\wcmsvc\wifinetworkmanager" /v "wifisenseopen" /t REG_DWORD /d "0" /f
	
	REM Windows Defender sample reporting
	%windir%\system32\reg.exe add "HKLM\software\microsoft\windows defender\spynet" /v "spynetreporting" /t REG_DWORD /d "0" /f
	%windir%\system32\reg.exe add "HKLM\software\microsoft\windows defender\spynet" /v "submitsamplesconsent" /t REG_DWORD /d "0" /f
	
	REM SkyDrive
	%windir%\system32\reg.exe add "HKLM\software\policies\microsoft\windows\skydrive" /v "disablefilesync" /t REG_DWORD /d "1" /f
	
	REM Kill OneDrive from hooking into Explorer even when disabled
	%windir%\system32\reg.exe add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
	%windir%\system32\reg.exe add "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
	
	REM DiagTrack service
	%windir%\system32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
	
	REM "WAP Push Message Routing Service"
	%windir%\system32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
	
	REM Disable Cortana globally
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f

	REM Disable "Search online and include web results"
	%windir%\system32\reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
) else (
	REM GPO options to disable telemetry
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM Diagtrack Listener
	%windir%\system32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM Wifi sense; this is a nasty one, privacy-wise
	%windir%\system32\reg.exe add "HKLM\software\microsoft\wcmsvc\wifinetworkmanager" /v "wifisensecredshared" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	%windir%\system32\reg.exe add "HKLM\software\microsoft\wcmsvc\wifinetworkmanager" /v "wifisenseopen" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM Windows Defender sample reporting
	%windir%\system32\reg.exe add "HKLM\software\microsoft\windows defender\spynet" /v "spynetreporting" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	%windir%\system32\reg.exe add "HKLM\software\microsoft\windows defender\spynet" /v "submitsamplesconsent" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM SkyDrive
	%windir%\system32\reg.exe add "HKLM\software\policies\microsoft\windows\skydrive" /v "disablefilesync" /t REG_DWORD /d "1" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM Kill OneDrive from hooking into Explorer even when disabled
	%windir%\system32\reg.exe add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	%windir%\system32\reg.exe add "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM DiagTrack service
	%windir%\system32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM "WAP Push Message Routing Service"
	%windir%\system32\reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
	REM Disable Cortana globally
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1

	REM Disable "Search online and include web results"
	%windir%\system32\reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	%windir%\system32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >> "%LOGPATH%\%LOGFILE%" 2>&1
	
)


:: NULL ROUTE BAD HOSTS
call functions\log.bat "     Null-routing bad hosts, please wait..."

:: Run this command to flush ALL routes IMMEDIATELY. It will delete your default route so you'll need to reboot or do an ipconfig /release & ipconfig /renew to get back online
::route -f

:: Run this command to clear persistent routes only, takes effect at reboot. This will undo all the below changes
::reg delete HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\PersistentRoutes /va /f

:: The reason we can't do this via firewall ACL entries or host file entries is because Windows maliciously ignores any rules blocking access to telemetry servers.
:: Currently the only known solution is installing null-routes in the route table.

if "%VERBOSE%"=="yes" (
	:: a-0001.a-msedge.net
	route -p add 204.79.197.200/32 0.0.0.0
	:: a23-218-212-69.deploy.static.akamaitechnologies.com
	route -p add 23.218.212.69/32 0.0.0.0
	:: a.ads1.msn.com
	route -p add 204.160.124.125/32 0.0.0.0
	route -p add 8.253.14.126/32 0.0.0.0
	route -p add 8.254.25.126/32 0.0.0.0
	:: a.ads2.msads.net
	route -p add 93.184.215.200/32 0.0.0.0
	:: a.ads2.msn.com
	route -p add 198.78.194.252/32 0.0.0.0
	route -p add 198.78.209.253/32 0.0.0.0
	route -p add 8.254.23.254/32 0.0.0.0
	:: ac3.msn.com
	route -p add 131.253.14.76/32 0.0.0.0
	:: ads1.msads.net
	route -p add 23.201.58.73/32 0.0.0.0
	:: ads1.msn.com
	route -p add 204.160.124.125/32 0.0.0.0
	route -p add 8.253.14.126/32 0.0.0.0
	route -p add 8.254.25.126/32 0.0.0.0
	:: adsmockarc.azurewebsites.net
	route -p add 191.236.16.12/32 0.0.0.0
	:: ads.msn.com
	route -p add 157.56.91.82/32 0.0.0.0
	:: auth.gfx.ms
	route -p add 23.61.72.70/32 0.0.0.0
	:: b.ads1.msn.com
	route -p add 204.160.124.125/32 0.0.0.0
	route -p add 8.253.14.126/32 0.0.0.0
	route -p add 8.254.25.126/32 0.0.0.0
	:: b.ads2.msads.net
	route -p add 93.184.215.200/32 0.0.0.0
	:: df.telemetry.microsoft.com
	route -p add 65.52.100.7/32 0.0.0.0
	:: help.bingads.microsoft.com
	route -p add 207.46.202.114/32 0.0.0.0
	:: oca.telemetry.microsoft.com
	route -p add 65.55.252.63/32 0.0.0.0
	:: oca.telemetry.microsoft.com.nsatc.net
	route -p add 65.55.252.63/32 0.0.0.0
	:: pre.footprintpredict.com
	route -p add 204.79.197.200/32 0.0.0.0
	:: reports.wes.df.telemetry.microsoft.com
	route -p add 65.52.100.91/32 0.0.0.0
	:: sb.scorecardresearch.com
	route -p add 104.79.156.195/32 0.0.0.0
	:: services.wes.df.telemetry.microsoft.com
	route -p add 65.52.100.92/32 0.0.0.0
	:: settings-win.data.microsoft.com
	route -p add 65.55.44.108/32 0.0.0.0
	:: s.gateway.messenger.live.com
	route -p add 157.56.106.210/32 0.0.0.0
	:: sgmetrics.cloudapp.net
	route -p add 168.62.11.145/32 0.0.0.0
	:: spynet2.microsoft.com
	route -p add 23.96.212.225/32 0.0.0.0
	:: spynetalt.microsoft.com
	route -p add 23.96.212.225/32 0.0.0.0
	:: sqm.df.telemetry.microsoft.com
	route -p add 65.52.100.94/32 0.0.0.0
	:: sqm.telemetry.microsoft.com
	route -p add 65.55.252.93/32 0.0.0.0
	:: sqm.telemetry.microsoft.com.nsatc.net
	route -p add 65.55.252.93/32 0.0.0.0
	:: statsfe1.ws.microsoft.com
	route -p add 134.170.115.60/32 0.0.0.0
	route -p add 207.46.114.61/32 0.0.0.0
	:: statsfe2.update.microsoft.com.akadns.net
	route -p add 65.52.108.153/32 0.0.0.0
	:: statsfe2.ws.microsoft.com
	route -p add 64.4.54.22/32 0.0.0.0
	:: storeedgefd.dsx.mp.microsoft.com // Microsoft App Store
	:: route -p add 104.79.153.53/32 0.0.0.0
	:: telecommand.telemetry.microsoft.com
	route -p add 65.55.252.92/32 0.0.0.0
	:: telecommand.telemetry.microsoft.com.nsatc.net
	route -p add 65.55.252.92/32 0.0.0.0
	:: telemetry.appex.bing.net
	route -p add 168.62.187.13/32 0.0.0.0
	:: telemetry.microsoft.com
	route -p add 65.52.100.9/32 0.0.0.0
	:: telemetry.urs.microsoft.com
	route -p add 131.253.40.37/32 0.0.0.0
	:: vortex.data.microsoft.com
	route -p add 64.4.54.254/32 0.0.0.0
	:: vortex-sandbox.data.microsoft.com
	route -p add 64.4.54.32/32 0.0.0.0
	:: vortex-win.data.microsoft.com
	route -p add 64.4.54.254/32 0.0.0.0
	:: watson.live.com
	route -p add 207.46.223.94/32 0.0.0.0
	:: watson.microsoft.com
	route -p add 65.55.252.71/32 0.0.0.0
	:: watson.ppe.telemetry.microsoft.com
	route -p add 65.52.100.11/32 0.0.0.0
	:: watson.telemetry.microsoft.com
	route -p add 65.52.108.29/32 0.0.0.0
	:: watson.telemetry.microsoft.com.nsatc.net
	route -p add 65.52.108.29/32 0.0.0.0
	:: wes.df.telemetry.microsoft.com
	route -p add 65.52.100.93/32 0.0.0.0
) else (
	:: a-0001.a-msedge.net
	route -p add 204.79.197.200/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: a23-218-212-69.deploy.static.akamaitechnologies.com
	route -p add 23.218.212.69/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: a.ads1.msn.com
	route -p add 204.160.124.125/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 8.253.14.126/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 8.254.25.126/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: a.ads2.msads.net
	route -p add 93.184.215.200/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: a.ads2.msn.com
	route -p add 198.78.194.252/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 198.78.209.253/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 8.254.23.254/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: ac3.msn.com
	route -p add 131.253.14.76/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: ads1.msads.net
	route -p add 23.201.58.73/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: ads1.msn.com
	route -p add 204.160.124.125/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 8.253.14.126/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 8.254.25.126/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: adsmockarc.azurewebsites.net
	route -p add 191.236.16.12/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: ads.msn.com
	route -p add 157.56.91.82/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: auth.gfx.ms
	route -p add 23.61.72.70/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: b.ads1.msn.com
	route -p add 204.160.124.125/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 8.253.14.126/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 8.254.25.126/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: b.ads2.msads.net
	route -p add 93.184.215.200/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: df.telemetry.microsoft.com
	route -p add 65.52.100.7/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: help.bingads.microsoft.com
	route -p add 207.46.202.114/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: oca.telemetry.microsoft.com
	route -p add 65.55.252.63/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: oca.telemetry.microsoft.com.nsatc.net
	route -p add 65.55.252.63/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: pre.footprintpredict.com
	route -p add 204.79.197.200/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: reports.wes.df.telemetry.microsoft.com
	route -p add 65.52.100.91/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: sb.scorecardresearch.com
	route -p add 104.79.156.195/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: services.wes.df.telemetry.microsoft.com
	route -p add 65.52.100.92/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: settings-win.data.microsoft.com
	route -p add 65.55.44.108/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: s.gateway.messenger.live.com
	route -p add 157.56.106.210/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: sgmetrics.cloudapp.net
	route -p add 168.62.11.145/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: spynet2.microsoft.com
	route -p add 23.96.212.225/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: spynetalt.microsoft.com
	route -p add 23.96.212.225/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: sqm.df.telemetry.microsoft.com
	route -p add 65.52.100.94/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: sqm.telemetry.microsoft.com
	route -p add 65.55.252.93/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: sqm.telemetry.microsoft.com.nsatc.net
	route -p add 65.55.252.93/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: statsfe1.ws.microsoft.com
	route -p add 134.170.115.60/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	route -p add 207.46.114.61/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: statsfe2.update.microsoft.com.akadns.net
	route -p add 65.52.108.153/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: statsfe2.ws.microsoft.com
	route -p add 64.4.54.22/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: storeedgefd.dsx.mp.microsoft.com // Disabled for Tron. Required for the Microsoft App Store to connect
	:: route -p add 104.79.153.53/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: telecommand.telemetry.microsoft.com
	route -p add 65.55.252.92/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: telecommand.telemetry.microsoft.com.nsatc.net
	route -p add 65.55.252.92/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: telemetry.appex.bing.net
	route -p add 168.62.187.13/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: telemetry.microsoft.com
	route -p add 65.52.100.9/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: telemetry.urs.microsoft.com
	route -p add 131.253.40.37/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: vortex.data.microsoft.com
	route -p add 64.4.54.254/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: vortex-sandbox.data.microsoft.com
	route -p add 64.4.54.32/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: vortex-win.data.microsoft.com
	route -p add 64.4.54.254/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: watson.live.com
	route -p add 207.46.223.94/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: watson.microsoft.com
	route -p add 65.55.252.71/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: watson.ppe.telemetry.microsoft.com
	route -p add 65.52.100.11/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: watson.telemetry.microsoft.com
	route -p add 65.52.108.29/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: watson.telemetry.microsoft.com.nsatc.net
	route -p add 65.52.108.29/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
	:: wes.df.telemetry.microsoft.com
	route -p add 65.52.100.93/32 0.0.0.0 >> "%LOGPATH%\%LOGFILE%" 2>&1
)


:: Kill GWX/Skydrive/Spynet/Telemetry/Wifi Sense
if "%VERBOSE%"=="yes" (
	taskkill /f /im gwx.exe /t
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn setowner -ownr n:administrators
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn ace -ace "n:administrators;p:full"
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn setowner -ownr n:administrators
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn ace -ace "n:administrators;p:full"
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn setowner -ownr n:administrators
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn ace -ace "n:administrators;p:full"
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn setowner -ownr n:administrators
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn ace -ace "n:administrators;p:full"
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn setowner -ownr n:administrators
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn ace -ace "n:administrators;p:full"
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn setowner -ownr n:administrators
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn ace -ace "n:administrators;p:full"
) else (
	taskkill /f /im gwx.exe /t >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn setowner -ownr n:administrators >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\wcmsvc\wifinetworkmanager" -ot reg -actn ace -ace "n:administrators;p:full" >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn setowner -ownr n:administrators >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows\currentversion\windowsupdate\auto update" -ot reg -actn ace -ace "n:administrators;p:full" >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn setowner -ownr n:administrators >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\microsoft\windows defender\spynet" -ot reg -actn ace -ace "n:administrators;p:full" >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn setowner -ownr n:administrators >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\datacollection" -ot reg -actn ace -ace "n:administrators;p:full" >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn setowner -ownr n:administrators >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\gwx" -ot reg -actn ace -ace "n:administrators;p:full" >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn setowner -ownr n:administrators >> "%LOGPATH%\%LOGFILE%" 2>&1
	stage_4_repair\disable_windows_telemetry\setacl.exe -on "hkey_local_machine\software\policies\microsoft\windows\skydrive" -ot reg -actn ace -ace "n:administrators;p:full" >> "%LOGPATH%\%LOGFILE%" 2>&1
)

:: Kill pending tracking reports
if not exist %ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\ mkdir %ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\ >NUL 2>&1
echo. > %ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl 2>NUL
echo y|cacls.exe "%programdata%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl" /d SYSTEM >NUL 2>&1


:: Kill "show fun tips, hints and tricks" on the lock screen
%windir%\system32\reg.exe load HKEY_LOCAL_MACHINE\defuser %USERPROFILES%\default\ntuser.dat >NUL 2>&1
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\defuser\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V RotatingLockScreenOverlayEnabled /T REG_DWORD /D 00000000 /F >NUL 2>&1
%windir%\system32\reg.exe unload HKEY_LOCAL_MACHINE\defuser >NUL 2>&1



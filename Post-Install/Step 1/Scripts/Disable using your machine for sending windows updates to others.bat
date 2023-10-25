@echo off

REM Disable using your machine for sending windows updates to others

reg add “HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config” /v DownloadMode /t REG_DWORD /d 0 /f

REM disable sending settings to cloud

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync” /v DisableSettingSync /t REG_DWORD /d 2 /f

REM disable synchronizing files to cloud

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync” /v DisableSettingSyncUserOverride /t REG_DWORD /d 1 /f

REM disable ad customization

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo” /v DisabledByGroupPolicy /t REG_DWORD /d 1 /f

REM disable data collection and sending to MS

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection” /v AllowTelemetry /t REG_DWORD /d 0 /f

REM disable sending files to encrypted drives

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices” /v TCGSecurityActivationDisabled /t REG_DWORD /d 0 /f

REM disable sync files to one drive

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive” /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f

REM disable certificate revocation check

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers” /v authenticodeenabled /t REG_DWORD /d 0 /f

REM disable send additional info with error reports

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting” /v DontSendAdditionalData /t REG_DWORD /d 1 /f

REM disable cortana in windows search

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search” /v AllowCortana /t REG_DWORD /d 0 /f

REM disable web search in search bar

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search” /v DisableWebSearch /t REG_DWORD /d 1 /f

REM disable search web when searching pc

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search” /v ConnectedSearchUseWeb /t REG_DWORD /d 0 /f

REM disable search indexing

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search” /v AllowIndexingEncryptedStoresOrItems /t REG_DWORD /d 0 /f

REM disable location based info in searches

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search” /v AllowSearchToUseLocation /t REG_DWORD /d 0 /f

REM disable language detection

reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search” /v AlwaysUseAutoLangDetection /t REG_DWORD /d 0 /f

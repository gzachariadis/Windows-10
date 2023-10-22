set destination=%cd%\Scripts
 
FOR %%I in (%destination%\*.*) DO Powershell Start-Process -FilePath "'"%%I"'" -ArgumentList "/quiet","/norestart" -Wait -Verb RunAs -WindowStyle Normal
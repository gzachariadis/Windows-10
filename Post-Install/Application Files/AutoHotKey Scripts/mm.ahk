#NoTrayIcon
#SingleInstance Force
#NoTrayIcon
#InstallKeybdHook
#InstallMouseHook
#UseHook
#NoEnv
#Persistent
SetWorkingDir %A_ScriptDir%

#if (WinActive("ahk_exe League of Legends.exe"))

CapsLock::
If (A_PriorHotKey = A_ThisHotKey and A_TimeSincePriorHotkey < 500)
 +Enter::
 sleep, 50
 Send {enter}/mute all{enter}
 sleep, 10
 Run, "disable_league_chat.exe" /verysilent /norestart
 return
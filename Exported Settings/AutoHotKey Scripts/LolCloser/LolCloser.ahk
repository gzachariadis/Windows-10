;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; Rise ;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;
;;;;; Code itself
;;;;;;;;;;;;;;;;;
#InstallMouseHook
#InstallKeybdHook
SetTitleMatchMode, 2 ;Matching for window title.
#ifwinactive, League of Legends (TM) Client ;Active only if league client is actually open/active.
#NoEnv
	ALT & F4::
		While GetKeyState("ALT", "P") && GetKeyState("F4", "P")
		{
		;;;Process, Close, LeagueClient.exe
		Process, Close, League Of Legends.exe
		}
	Return
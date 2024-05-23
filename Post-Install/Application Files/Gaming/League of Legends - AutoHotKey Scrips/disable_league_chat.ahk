#ifwinactive League of Legends (TM) Client
	 Enter:: return
	 NumpadEnter::return

#IfWinActive ahk_class RiotWindowClass
	Enter:: return
	NumpadEnter::return
	 
#if (WinActive("ahk_exe League of Legends.exe"))
	 Enter:: return
	 NumpadEnter::return

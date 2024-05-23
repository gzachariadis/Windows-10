#NoTrayIcon

#if (WinActive("ahk_exe League of Legends.exe"))

CapsLock & Space::

SendInput, {Enter}

sleep, 10

SendInput, I Mute all. Enjoy game :)

SendInput, {Enter}

sleep, 10

SendInput, /mute all

SendInput, {Enter}

return 

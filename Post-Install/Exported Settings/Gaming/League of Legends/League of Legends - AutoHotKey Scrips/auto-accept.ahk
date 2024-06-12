#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

Loop,
{
ImageSearch, x, y, 0, 0, 1920, 1080, *20 Accept.png
If (ErrorLevel=0)
{
	MouseMove, x+20, y+10
	Sleep, 200
	MouseClick, left
	Sleep, 200
	MouseClick, left
	Sleep, 200
	MouseMove, x+20, y+60
}
Sleep, 1000
}
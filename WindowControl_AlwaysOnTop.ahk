#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Alt Ctrl a: Always on top
; Alt Ctrl m: More transparent
; ALt Ctrl l: Less transparent
; ALt Ctrl c: Clickthroughable
; ALt Ctrl u: Unclickthroughable

!^a::
WinGet, currentWindow, ID, A
WinGet, ExStyle, ExStyle, ahk_id %currentWindow%
if (ExStyle & 0x8)  ; 0x8 is WS_EX_TOPMOST.
{
	Winset, AlwaysOnTop, off, ahk_id %currentWindow%
	SplashImage,, x0 y0 b fs12, OFF always on top.
	Sleep, 1500
	SplashImage, Off
}
else
{
	WinSet, AlwaysOnTop, on, ahk_id %currentWindow%
	SplashImage,,x0 y0 b fs12, ON always on top.
	Sleep, 1500
	SplashImage, Off
}
return

!^l::
SplashImage, Off
WinGet, currentWindow, ID, A
if not (%currentWindow%)
{
	%currentWindow% := 255
}
if (%currentWindow% != 5)
{
	%currentWindow% -= 5
	WinSet, Transparent, % %currentWindow%, ahk_id %currentWindow%
}
SplashImage,, w100 x0 y0 b fs12, % %currentWindow%
SetTimer, TurnOffSI, 1000, On
Return


!^m::
WinGet, currentWindow, ID, A
if not (%currentWindow%)
{
	%currentWindow% := 255
}
if (%currentWindow% != 255)
{
	%currentWindow% += 5
	WinSet, Transparent, % %currentWindow%, ahk_id %currentWindow%
}
SplashImage,,w100 x0 y0 b fs12, % %currentWindow%
SetTimer, TurnOffSI, 1000, On
Return

!^c::
WinGet, currentWindow, ID, A
WinSet, ExStyle, +0x80020, ahk_id %currentWindow%
return

!^u::
MouseGetPos,,, MouseWin ; Gets the unique ID of the window under the mouse
WinSet, ExStyle, -0x80020, ahk_id %currentWindow%
Return

TurnOffSI:
SplashImage, off
SetTimer, TurnOffSI, 1000, Off
Return

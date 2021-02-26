#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

BtnText := Object()
BtnText[1] := "家暴"
BtnText[2] := "性侵"
BtnText[3] := "替代役"

yloc = 1
n = 1
Loop{
if n >= 4
  break
yloc := (n-1)*40
gosub, BuildNewForm
n++
}
Gui, Show

BuildNewForm:
    Gui, Add, Button, x1 y%yloc% w110 h40 gBtn, % BtnText[n]
return

Btn:
ControlGetText, BtnName
MsgBox, %BtnName%
;ControlGet, BtnEnb , Enabled
Gui, Font, s1
GuiControl, Font, %BtnName%
Return
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetTitleMatchMode 2

IfWinNotExist Windows 相片檢視器
{
Gui, Add, Text,, 請輸入年:
Gui, Add, Text,, 請輸入月:
Gui, Add, Edit, vYear ys, 2016
Gui, Add, Edit, vMonth, 11
Gui, Add, Button, gSub ,確定
Gui, Show
Return

Sub:
	Gui, Submit
	file = E:\新聞剪報\%Year%\%Year%%Month% %MyEdit%
	Run explorer %file%
	WinWait, ahk_class CabinetWClass
	Sleep, 650
	MsgBox, 請打開欲上標之新聞剪報
	WinWait Windows 相片檢視器
	WinMove, Windows 相片檢視器,, 0,0, 672, 763
	IfWinNotExist 新聞上標後台 - 記事本
		Run % "C:\Users\user\Desktop\新聞上標後台.txt"
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	WinMove, 新聞上標後台 - 記事本,, 669,0, 355, 763
	Send, {Ctrl down}{Space}{Ctrl up}
	Send, {Shift down}{Space}{Shift up}

Return
}
else
{
	WinActivate Windows 相片檢視器
	WinWaitActive Windows 相片檢視器	
	WinMove, Windows 相片檢視器,, 0,0, 672, 763
	IfWinNotExist 新聞上標後台 - 記事本
		Run % "C:\Users\user\Desktop\新聞上標後台.txt"
	WinMove, 新聞上標後台 - 記事本,, 669,0, 355, 763
	WinActivate, 新聞上標後台 - 記事本
	Send, {Ctrl down}{Space}{Ctrl up}
	Send, {Shift down}{Space}{Shift up}

Return
}

#IfWinActive 新聞上標後台 - 記事本
{
F2::
	Send, {Enter}
	Send, {Ctrl down}s{Ctrl up}
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {Right}
	Sleep, 500
	WinGetTitle, Title, A
	If (RegExMatch(Title,"(((.)*001)|((.)*\(1\)))"))
	{
		MsgBox, 結束
		Return
	}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
F3::
NumpadAdd::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {NumpadAdd}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
F4::
NumpadSub::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {NumpadSub}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
Numpaddown::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {Alt down}{Down}{Alt up}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
Numpadup::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {Alt down}{Up}{Alt up}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
Numpadleft::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {Alt down}{Left}{Alt up}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
Numpadright::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {Alt down}{Right}{Alt up}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
Pgup::
Numpadpgup::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {Left}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
PgDn::
Numpadpgdn::
	WinActivate, Windows 相片檢視器
	WinWaitActive, Windows 相片檢視器
	Send, {Right}
	WinActivate, 新聞上標後台 - 記事本
	WinWaitActive, 新聞上標後台 - 記事本
	Return
}
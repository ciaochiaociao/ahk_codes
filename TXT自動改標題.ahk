#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2

Array := Object()

Loop, Read, C:\Users\user\Desktop\新聞上標後台.txt
{
    Array.Insert(A_LoopReadLine)
}

IfWinExist Windows 相片檢視器
{
WinActivate, Windows 相片檢視器
WinGetTitle, Title, A
If (RegExMatch(Title,"(((.)*001)|((.)*\(1\))) - Windows 相片檢視器"))
{
for index, element in Array
	{
	WinWaitActive, scan
	WinGetTitle, Title, A
	If(RegExMatch(Title,"\p{Han} - Windows 相片檢視器"))
	{
		MsgBox, 結束
		Return
	}
	Send, {Alt down}{Enter}{Alt up}
	WinWait, 內容
	WinWaitActive, 內容
	Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
	Send % Array[A_Index]
	Send, {Enter}
	WinWaitActive, Windows 相片檢視器
	Send, {Right}
	}
}
else
{
	MsgBox, 請切換到第一張新聞剪報
}

Return
}
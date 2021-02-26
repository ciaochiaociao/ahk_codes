#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 任意檔案
SetTitleMatchMode 2
#IfWinExist Windows 相片檢視器
{
#IfWinExist 記事本
{
!space::
	Send, {Ctrl down}c{Ctrl up}
	WinActivate, Windows 相片檢視器
	WinWait, Windows 相片檢視器
	Send, {Alt down}{Enter}{Alt up}
	WinWait, 內容
	Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
	Send, {End}
	Send, {Ctrl down}v{Ctrl up}
	Send, {Enter}
Return
}
}
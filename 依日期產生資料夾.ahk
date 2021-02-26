#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir E:\新聞剪報  ; Ensures a consistent starting directory.

MsgBox, % 4+256+48+4096+16384, 請注意,  將依日期產生資料夾，可能會覆蓋掉已有的檔案並且不能回復，確定繼續?, 10
IfMsgBox Timeout
{	MsgBox, 已超時，自動關閉程式。
	Return
}
else IfMsgBox No
	Return
	else IfMsgBox Yes
	{	MsgBox, % 4+256+48+4096+16384, 請注意,  準備開始程式，提醒您將可能造成無法返回的檔案覆蓋，確定執行?, 10
		IfMsgBox Timeout
		{	MsgBox, 已超時，自動關閉程式。
			Return
		}
		else IfMsgBox No
			Return
	}

FormatTime, MyTime, 20170531000000, yyyyMMddHHmmss

Loop, 600
{
	MyTime += 1, Days
	FormatTime, MyYear, %MyTime%, yyyy
	FormatTime, MyMonth, %MyTime%, MM
	FormatTime, MyDay, %MyTime%, dd
	;MsgBox, %MyYear% %MyMonth% %MyDay%
	FileCreateDir, %A_WorkingDir%\%MyYear%\%MyYear%%MyMonth%\%MyYear%%MyMonth%%MyDay%
}
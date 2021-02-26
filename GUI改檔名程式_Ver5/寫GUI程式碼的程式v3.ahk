#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式_Ver5  ; Ensures a consistent starting directory.

Array := Object()
Title_Orig := Object()
Title_Sim := Object()
Title := Object()
TitleIndex = 0

;輸入
Loop, Read, 所有按鈕.txt
{
	TitleIndex +=1
	StringSplit, Title_Orig, A_LoopReadLine, %A_Space%
	Title_Sim%TitleIndex% = %Title_Orig1%
	Title%TitleIndex% = %Title_Orig2%
}

;輸出
	;重設
	FileDelete, BtnGui.ahk
	FileDelete, BtnFtn.ahk
	
	;
	xloc_start = 11
	yloc_start = 14
	xloc_step = 60
	yloc_step = 30
	count = 1

	xloc = %xloc_start%
	yloc = %yloc_start%

	Loop %TitleIndex%
	{
		FileAppend % "Gui, Add, Button, x" xloc " y" yloc " w60 h30 gbtn" count ", " Title_Sim%count% "`n", BtnGui.ahk
		count ++
		yloc := yloc + yloc_step
		if (yloc > 674)
		{
			yloc := yloc_start
			xloc := xloc + xloc_step
		}
	}
	count = 1
	Loop %TitleIndex%
	{
		FileAppend % "btn" count ":`n" "changeName(", BtnFtn.ahk
		FileAppend, ", BtnFtn.ahk
		FileAppend % Title%count%, BtnFtn.ahk
		FileAppend, ", BtnFtn.ahk
		FileAppend % ")`n" "Return`n", BtnFtn.ahk
		count ++
	}

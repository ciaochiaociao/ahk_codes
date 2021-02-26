#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Array := Object()
Title_Orig := Object()
Title_Sim := Object()
Title := Object()
TitleIndex = 0

;輸入
Loop, Read, C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\所有按鈕.txt
{
	TitleIndex +=1
	StringSplit, Title_Orig, A_LoopReadLine, %A_Space%
	Title_Sim%TitleIndex% = %Title_Orig1%
	Title%TitleIndex% = %Title_Orig2%
}

;輸出
	;重設
	FileDelete, C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnGui.txt
	FileDelete, C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnFtn.txt
	
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
		FileAppend % "Gui, Add, Button, x" xloc " y" yloc " w60 h30 gbtn" count ", " Title_Sim%count% "`n", C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnGui.txt
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
		FileAppend % "btn" count ":`n" "changeName(", C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnFtn.txt
		FileAppend, ", C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnFtn.txt
		FileAppend % Title%count%, C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnFtn.txt
		FileAppend, ", C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnFtn.txt
		FileAppend % ")`n" "Return`n", C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnFtn.txt

/*		Send % "btn" count ":`n" "changeName(" 
		Send, "
		Send % Title%count%
		Send, "
		Send % ")`n" "Return`n"
*/
		count ++
	}

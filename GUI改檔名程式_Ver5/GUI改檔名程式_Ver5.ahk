#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式_Ver5  ; Ensures a consistent starting directory.

RunWait, 寫GUI程式碼的程式v3.ahk
Sleep, 2000

Loop
{
If(FileExist(BtnFtn.ahk) && FileExist(BtnGui.ahk))
{
Run, 主程式碼.ahk
break
}
Sleep 1000
}

Sleep 5000
;WinWait, GUI改檔名程式
FileDelete, BtnFtn.ahk
FileDelete, BtnGui.ahk


Exit
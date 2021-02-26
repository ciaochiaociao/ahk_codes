#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

InputBox, OutputVar, 問題一,請輸入新聞標題。`n如:梅姬颱風來襲，台東縣政府準備好了!
InputBox, OutputVar1, 問題二,請輸入日期。`n如:20161231
InputBox, OutputVar2, 問題三,請輸入報別。`n如:自由時報
InputBox, OutputVar3, 問題四,請輸入版別。`n如:A14
   MsgBox, 檔案標題:`n%OutputVar1%_%OutputVar%_%OutputVar2%%OutputVar3%版
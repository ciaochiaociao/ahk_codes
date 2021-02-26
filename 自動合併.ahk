#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2

;;
;0. 輸入日期
FormatTime, CYearString,, yyyy
FormatTime, CMonthString,, MM
FormatTime, CDayString,, dd
Gui, Add, Text,, 請輸入年:
Gui, Add, Text,, 請輸入月:
Gui, Add, Text,, 請輸入日:
Gui, Add, Edit, ys, %CYearString%
Gui, Add, UpDown, vYear Range2000-2030 0x80, %CYearString%
Gui, Add, Edit,, %CMonthString%
Gui, Add, UpDown, vMonth Range01-12 Wrap, %CMonthString%
Gui, Add, Edit,, %CDayString%
Gui, Add, UpDown, vDay Range01-31 Wrap, %CDayString%
Gui, Add, Button, gSub, 確定
Gui, Show
Return

*Esc::ExitApp

Sub:
	Gui, Submit
	Day := addDigit(Day)
	Month := addDigit(Month)
	;origFolderPath = C:\Users\user\Desktop\TEST
	origFolderPath = E:\新聞剪報\%Year%\%Year%%Month%\%Year%%Month%%Day%
	;saveFolderPath = C:\Users\user\Desktop
	saveFolderPath = C:\Users\user\Desktop\新聞剪報PDF\%Year%\%Year%%Month%
	filename = 新聞剪報PDF %Year%%Month%%Day%
	okfilename = %filename%OK

;;
;1. 合併檔案
;1.1 開啟ACROBAT
;1.2 合併
IfWinNotExist ahk_exe Acrobat.exe
{
	Run Acrobat.exe
}
WinWaitActive ahk_exe Acrobat.exe
Send, {Alt down}F{Alt up}RM
WinWait ahk_class AVL_AVWindow
WinActivate ahk_class AVL_AVWindow

;1.3 匯入檔案
;1.3.1 開啟匯入檔案視窗
Send, {Tab}{Tab}{Enter}F

;1.3.2 選擇資料夾-輸入檔案路徑
WinActivate 新增檔案 ahk_class #32770
WinWaitActive 新增檔案 ahk_class #32770
Send, {F4}
Send, {Ctrl down}a{Ctrl up}
Sleep, 400
Send, %origFolderPath%
Send, {Enter}
Sleep, 2500 ;顯示檔案時間不能太短
Send, {Tab}{Tab}{Tab}{Tab}
Sleep, 1500
Send, {Ctrl down}a{Ctrl up}
Send, {Enter}

;1.4 執行合併並等待執行完畢
WinWaitClose 新增檔案
WinWaitActive ahk_class AVL_AVWindow
Sleep, 1000
Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
Send, {Enter}
WinWait 組合 1.pdf - Adobe Acrobat Pro
WinActivate 組合 1.pdf - Adobe Acrobat Pro

;1.5 存檔為 新聞簡報PDF 20XXXXXX (filename)
Sleep, 1000
Send, {Ctrl down}s{Ctrl up}
;另存新檔FUNCTION
WinWaitActive 另存新檔
Send, %filename%
Send, {F4}
Send, {Ctrl down}a{Ctrl up}
Sleep, 1000
Send, %saveFolderPath%
Send, {Enter}
Sleep, 1000
Send, {Alt down}s{Alt up}
Send, {Enter}

;1.6 存檔大小縮減的檔案 新聞簡報PDF 20XXXXXXOK (okfilename)
WinWait %filename%
WinActivate %filename%
Send, {Alt down}F{Alt up}HR
WinWaitActive 縮小檔案大小
Send, {Enter}
;另存新檔FUNCTION
WinWaitActive 另存新檔
Sleep, 1000
Send, %okfilename%
Send, {F4}
Send, {Ctrl down}a{Ctrl up}
Sleep, 1000
Send, %saveFolderPath%
Sleep, 1000
Send, {Enter}
Sleep, 2000
Send, {Alt down}s{Alt up}
WinWait %okfilename%
WinActivate %okfilename%
Sleep, 1500
WinClose %okfilename%

MsgBox, 結束

ExitApp
Return


addDigit(NUMBER)
{
	If(NUMBER <= 9 and NUMBER >= 0 )
	{
	NUMBER = 0%NUMBER%
	}
Return NUMBER
}
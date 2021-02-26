#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;
;0. 輸入日期
FormatTime, CYearString,, yyyy
FormatTime, CMonthString,, MM
FormatTime, CDayString,, dd
Gui, Add, Text,, 請輸入年:
Gui, Add, Text,, 請輸入月:
Gui, Add, Text,, 請輸入日:
Gui, Add, Edit, vYear ys, %CYearString%
Gui, Add, Edit, vMonth, %CMonthString%
Gui, Add, Edit, vDay, %CDayString%
Gui, Add, Button, gSub ,確定
Gui, Show
Return

Sub:
	Gui, Submit
	;origFolderPath = C:\Users\user\Desktop\TEST
	origFolderPath = E:\新聞剪報\%Year%\%Year%%Month%\%Year%%Month%%Day%
	;saveFolderPath = C:\Users\user\Desktop
	saveFolderPath = C:\Users\user\Desktop\新聞剪報PDF\%Year%\%Year%%Month%
	filename = 新聞剪報PDF %Year%%Month%%Day%
	okfilename = %filename%OK
	emailTitle = 新聞剪報%Year%%Month%%Day%


;2. 寄信
;2.1 打開命令提示字元
Sleep, 2000
Send, {LWin down}r{LWin up}
WinWaitActive 執行 ahk_exe Explorer.EXE
Send, {Alt down}a{Alt up}cmd{Enter}
WinWaitActive ahk_class ConsoleWindowClass
Send, cd C:\Program Files\Google\Chrome\Application
Send, {Enter}
Send, chrome.exe -incognito inbox.google.com
Send, {Enter}
Sleep, 1000
WinClose ahk_class ConsoleWindowClass


;2.2 開啟無痕式Google Chrome
;WinActivate New Tab - Google
;WinWaitActive New Tab - Google
;2.3 前往inbox.gmail.com輸入帳密
Sleep, 5000
Send, tony790927@gmail.com{Enter}
Sleep, 3000
Send, {Shift down}1{Shift up}PPOOPZ?
Sleep, 1000
Send {Enter}

;2.4 寫信
WinActivate Inbox
WinWaitActive Inbox
Sleep, 8000
Send, c
Sleep, 5000
Send, j2046@taitung.gov.tw j4006@taitung.gov.tw
Send, {Enter}
Sleep, 2000
Send, {Tab 2}
Sleep, 3000
Send, %emailTitle%
Sleep, 3000

;2.5 附檔案
Send, {Tab 3}{Enter}
Sleep, 4000
Send, {Enter}
WinWaitActive 開啟舊檔 ahk_exe chrome.exe
Sleep, 1000
Send, %okfilename%
Sleep, 1000
Send, {F4}
Send, 1000
Send, {Ctrl down}a{Ctrl up}
Sleep, 1000
Send, %saveFolderPath%
Send, {Enter}
Sleep, 1000
Send, {Alt down}o{Alt up}
;;
MsgBox, 完成
;;
ExitApp
Return



Esc:: ExitApp
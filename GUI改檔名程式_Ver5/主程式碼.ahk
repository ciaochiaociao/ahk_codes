﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式_Ver5

RunWait, 寫GUI程式碼的程式v3.ahk
Sleep, 3000
; 抓取由 "Windows 相片檢視器" 開啟的任意檔案
SetTitleMatchMode 2

IfWinNotExist Windows 相片檢視器
{
	MsgBox, 請打開欲上報版別之新聞剪報檔
	WinWait, Windows 相片檢視器
}
WinActivate Windows 相片檢視器
WinMove, Windows 相片檢視器,, 0,0, 672, 763

;; 按鈕選項
#include BtnGui.ahk
;;

Gui, Add, Button, Section w30 gaddbtn1, 更生
Gui, Add, Button, x251 yp+26 w30 gaddbtn2, 自由
Gui, Add, Button, x251 yp+26 w30 gaddbtn3, 聯合
Gui, Add, Button, x251 yp+26 w30 gaddbtn4, 中時
Gui, Add, Button, x251 yp+26 w30 gaddbtn5, 台時
Gui, Add, Button, x251 yp+26 w30 gaddbtn6, 人福
Gui, Add, Button, x251 yp+26 w30 gaddbtn7, 台新
Gui, Add, Button, x251 yp+26 w30 gaddbtn8, 中華
Gui, Add, Button, x251 yp+26 w30 gaddbtn9, 工商
Gui, Add, Button, x251 yp+26 w30 gaddbtn10, 青年
Gui, Add, Button, x251 yp+26 w30 gaddbtn11, 蘋果
Gui, Add, Button, x251 yp+26 w30 gaddbtn12, 經濟
Gui, Add, Button, x251 yp+26 w30 gaddbtn13, 聯晚

Gui, Add, Edit, w30 r1 ys+1 vMyEdit1, 2
Gui, Add, Edit, w30 r1 vMyEdit2, A10
Gui, Add, Edit, w30 r1 vMyEdit3, A9
Gui, Add, Edit, w30 r1 vMyEdit4, A7
Gui, Add, Edit, w30 r1 vMyEdit5, 11
Gui, Add, Edit, w30 r1 vMyEdit6, 4
Gui, Add, Edit, w30 r1 vMyEdit7, 11
Gui, Add, Edit, w30 r1 vMyEdit8, D1
Gui, Add, Edit, w30 r1 vMyEdit9, A3
Gui, Add, Edit, w30 r1 vMyEdit10, 2
Gui, Add, Edit, w30 r1 vMyEdit11, A1
Gui, Add, Edit, w30 r1 vMyEdit12, A7
Gui, Add, Edit, w30 r1 vMyEdit13, B5
Gui, Add, Button, w60 xp-30 yp+26 gLastPage, 上一頁
Gui, Add, Button, w60 xp yp+26 gNextPage, 下一頁
Gui, Add, Button, w60 xp yp+26 gUndoAdd, 復原

Gui, Show, xcenter ycenter autosize, GUI改檔名程式
WinMove, GUI改檔名程式 ahk_class AutoHotkeyGUI,, 677, 5

Return

;;
#include BtnFtn.ahk
;;

;;
addbtn1:
	Gui, Submit, NoHide
	MyEdit1 = _更生日報%MyEdit1%版
	changeName(MyEdit1)
	Return
addbtn2:
	Gui, Submit, NoHide
	MyEdit2 = _自由時報%MyEdit2%版
	changeName(MyEdit2)
	Return
addbtn3:
	Gui, Submit, NoHide
	MyEdit3 = _聯合報%MyEdit3%版
	changeName(MyEdit3)
	Return
addbtn4:
	Gui, Submit, NoHide
	MyEdit4 = _中國時報%MyEdit4%版
	changeName(MyEdit4)
	Return
addbtn5:
	Gui, Submit, NoHide
	MyEdit5 = _台灣時報%MyEdit5%版
	changeName(MyEdit5)
	Return
addbtn6:
	Gui, Submit, NoHide
	MyEdit6 = _人間福報%MyEdit6%版
	changeName(MyEdit6)
	Return
addbtn7:
	Gui, Submit, NoHide
	MyEdit7 = _台灣新生報%MyEdit7%版
	changeName(MyEdit7)
	Return
addbtn8:
	Gui, Submit, NoHide
	MyEdit8 = _中華日報%MyEdit8%版
	changeName(MyEdit8)
	Return
addbtn9:
	Gui, Submit, NoHide
	MyEdit9 = _工商時報%MyEdit9%版
	changeName(MyEdit9)
	Return
addbtn10:
	Gui, Submit, NoHide
	MyEdit10 = _青年日報%MyEdit10%版
	changeName(MyEdit10)
	Return
addbtn11:
	Gui, Submit, NoHide
	MyEdit11 = _蘋果日報%MyEdit11%版
	changeName(MyEdit11)
	Return
addbtn12:
	Gui, Submit, NoHide
	MyEdit12 = _經濟日報%MyEdit12%版
	changeName(MyEdit12)
	Return
addbtn13:
	Gui, Submit, NoHide
	MyEdit13 = _聯合晚報%MyEdit13%版
	changeName(MyEdit13)
	Return
;;

;;
UndoAdd:
	WinActivate Windows 相片檢視器
	Send, {Left}
	Sleep 100
	Run explorer.exe
	WinWaitActive, ahk_class CabinetWClass
	Sleep 100
	Send, {Ctrl down}z{Ctrl up}
	Sleep 600
	Send, {Alt down}{F4}{Alt up}
Return
LastPage:
	WinActivate Windows 相片檢視器
	Send, {Left}
Return
NextPage:
	WinActivate Windows 相片檢視器
	Send, {Right}
Return
;;

changeName(STRING)
{
If WinExist(Windows 相片檢視器) & WinExist(記事本)
{
	WinActivate, Windows 相片檢視器
	WinWait, Windows 相片檢視器
	Send, {Alt down}{Enter}{Alt up}
	WinWait, 內容
	Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
	Send, {End}
	Send, %STRING%
	Send, {Enter}
	WinWaitActive, Windows 相片檢視器
	Send, {Right}
	Sleep, 500
	WinGetTitle, Title, A
	If (RegExMatch(Title,"_\p{Han}{1,4}報([A-Z]){0,2}(\d){1,2}版"))
		MsgBox, 結束
	Return
}
}

; 按X關閉程式
GuiClose:
ExitApp
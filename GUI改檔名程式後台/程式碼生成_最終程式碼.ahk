#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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
Gui, Add, Button, x11 y14 w60 h30 gbtn1, 更生1
Gui, Add, Button, x11 y44 w60 h30 gbtn2, 更生2
Gui, Add, Button, x11 y74 w60 h30 gbtn3, 更生3
Gui, Add, Button, x11 y104 w60 h30 gbtn4, 更生4
Gui, Add, Button, x11 y134 w60 h30 gbtn5, 更生6
Gui, Add, Button, x11 y164 w60 h30 gbtn6, 更生17
Gui, Add, Button, x11 y194 w60 h30 gbtn7, 更生18
Gui, Add, Button, x11 y224 w60 h30 gbtn8, 自由A2
Gui, Add, Button, x11 y254 w60 h30 gbtn9, 自由A3
Gui, Add, Button, x11 y284 w60 h30 gbtn10, 自由A4
Gui, Add, Button, x11 y314 w60 h30 gbtn11, 自由A6
Gui, Add, Button, x11 y344 w60 h30 gbtn12, 自由A8
Gui, Add, Button, x11 y374 w60 h30 gbtn13, 自由A9
Gui, Add, Button, x11 y404 w60 h30 gbtn14, 自由A11
Gui, Add, Button, x11 y434 w60 h30 gbtn15, 自由A12
Gui, Add, Button, x11 y464 w60 h30 gbtn16, 自由A13
Gui, Add, Button, x11 y494 w60 h30 gbtn17, 自由A14
Gui, Add, Button, x11 y524 w60 h30 gbtn18, 自由A15
Gui, Add, Button, x11 y554 w60 h30 gbtn19, 自由A16
Gui, Add, Button, x11 y584 w60 h30 gbtn20, 自由B3
Gui, Add, Button, x11 y614 w60 h30 gbtn21, 自由B4
Gui, Add, Button, x11 y644 w60 h30 gbtn22, 自由S2
Gui, Add, Button, x11 y674 w60 h30 gbtn23, 自由S3
Gui, Add, Button, x71 y14 w60 h30 gbtn24, 聯合A1
Gui, Add, Button, x71 y44 w60 h30 gbtn25, 聯合A2
Gui, Add, Button, x71 y74 w60 h30 gbtn26, 聯合A3
Gui, Add, Button, x71 y104 w60 h30 gbtn27, 聯合A4
Gui, Add, Button, x71 y134 w60 h30 gbtn28, 聯合A5
Gui, Add, Button, x71 y164 w60 h30 gbtn29, 聯合A6
Gui, Add, Button, x71 y194 w60 h30 gbtn30, 聯合A7
Gui, Add, Button, x71 y224 w60 h30 gbtn31, 聯合A8
Gui, Add, Button, x71 y254 w60 h30 gbtn32, 聯合A13
Gui, Add, Button, x71 y284 w60 h30 gbtn33, 聯合B1
Gui, Add, Button, x71 y314 w60 h30 gbtn34, 聯合B2
Gui, Add, Button, x71 y344 w60 h30 gbtn35, 聯合B3
Gui, Add, Button, x71 y374 w60 h30 gbtn36, 聯合B4
Gui, Add, Button, x71 y404 w60 h30 gbtn37, 中時A1
Gui, Add, Button, x71 y434 w60 h30 gbtn38, 中時A2
Gui, Add, Button, x71 y464 w60 h30 gbtn39, 中時A3
Gui, Add, Button, x71 y494 w60 h30 gbtn40, 中時A4
Gui, Add, Button, x71 y524 w60 h30 gbtn41, 中時A5
Gui, Add, Button, x71 y554 w60 h30 gbtn42, 中時A6
Gui, Add, Button, x71 y584 w60 h30 gbtn43, 中時A12
Gui, Add, Button, x71 y614 w60 h30 gbtn44, 中時A13
Gui, Add, Button, x71 y644 w60 h30 gbtn45, 中時B1
Gui, Add, Button, x71 y674 w60 h30 gbtn46, 中時B2
Gui, Add, Button, x131 y14 w60 h30 gbtn47, 中時B3
Gui, Add, Button, x131 y44 w60 h30 gbtn48, 中時C4
Gui, Add, Button, x131 y74 w60 h30 gbtn49, 中時D5
Gui, Add, Button, x131 y104 w60 h30 gbtn50, 台時1
Gui, Add, Button, x131 y134 w60 h30 gbtn51, 台時2
Gui, Add, Button, x131 y164 w60 h30 gbtn52, 台時3
Gui, Add, Button, x131 y194 w60 h30 gbtn53, 台時4
Gui, Add, Button, x131 y224 w60 h30 gbtn54, 台時5
Gui, Add, Button, x131 y254 w60 h30 gbtn55, 台時6
Gui, Add, Button, x131 y284 w60 h30 gbtn56, 台時7
Gui, Add, Button, x131 y314 w60 h30 gbtn57, 台時8
Gui, Add, Button, x131 y344 w60 h30 gbtn58, 台時9
Gui, Add, Button, x131 y374 w60 h30 gbtn59, 台時10
Gui, Add, Button, x131 y404 w60 h30 gbtn60, 台時13
Gui, Add, Button, x131 y434 w60 h30 gbtn61, 台時14
Gui, Add, Button, x131 y464 w60 h30 gbtn62, 台時17
Gui, Add, Button, x131 y494 w60 h30 gbtn63, 台時19
Gui, Add, Button, x131 y524 w60 h30 gbtn64, 人福1
Gui, Add, Button, x131 y554 w60 h30 gbtn65, 人福2
Gui, Add, Button, x131 y584 w60 h30 gbtn66, 人福3
Gui, Add, Button, x131 y614 w60 h30 gbtn67, 人福6
Gui, Add, Button, x131 y644 w60 h30 gbtn68, 人福10
Gui, Add, Button, x131 y674 w60 h30 gbtn69, 人福11
Gui, Add, Button, x191 y14 w60 h30 gbtn70, 人福A2
Gui, Add, Button, x191 y44 w60 h30 gbtn71, 人福A3
Gui, Add, Button, x191 y74 w60 h30 gbtn72, 台新1
Gui, Add, Button, x191 y104 w60 h30 gbtn73, 台新2
Gui, Add, Button, x191 y134 w60 h30 gbtn74, 台新3
Gui, Add, Button, x191 y164 w60 h30 gbtn75, 台新4
Gui, Add, Button, x191 y194 w60 h30 gbtn76, 台新5
Gui, Add, Button, x191 y224 w60 h30 gbtn77, 台新6
Gui, Add, Button, x191 y254 w60 h30 gbtn78, 台新7
Gui, Add, Button, x191 y284 w60 h30 gbtn79, 台新8
Gui, Add, Button, x191 y314 w60 h30 gbtn80, 台新15
Gui, Add, Button, x191 y344 w60 h30 gbtn81, 台新16
Gui, Add, Button, x191 y374 w60 h30 gbtn82, 中華A1
Gui, Add, Button, x191 y404 w60 h30 gbtn83, 中華A2
Gui, Add, Button, x191 y434 w60 h30 gbtn84, 中華A3
Gui, Add, Button, x191 y464 w60 h30 gbtn85, 中華A4
Gui, Add, Button, x191 y494 w60 h30 gbtn86, 中華D2
Gui, Add, Button, x191 y524 w60 h30 gbtn87, 工商A1
Gui, Add, Button, x191 y554 w60 h30 gbtn88, 工商A2
Gui, Add, Button, x191 y584 w60 h30 gbtn89, 工商A4
Gui, Add, Button, x191 y614 w60 h30 gbtn90, 工商A5
Gui, Add, Button, x191 y644 w60 h30 gbtn91, 青年1
Gui, Add, Button, x191 y674 w60 h30 gbtn92, 青年8
Gui, Add, Button, x251 y14 w60 h30 gbtn93, 青年12
Gui, Add, Button, x251 y44 w60 h30 gbtn94, 蘋果A4
Gui, Add, Button, x251 y74 w60 h30 gbtn95, 蘋果A8
Gui, Add, Button, x251 y104 w60 h30 gbtn96, 蘋果A9
Gui, Add, Button, x251 y134 w60 h30 gbtn97, 經濟A5
Gui, Add, Button, x251 y164 w60 h30 gbtn98, 經濟A6
Gui, Add, Button, x251 y194 w60 h30 gbtn99, 經濟A11
Gui, Add, Button, x251 y224 w60 h30 gbtn100, 聯晚B6
Gui, Add, Button, x251 y254 w60 h30 gbtn101, 聯晚B7
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
btn1:
changeName("_更生日報1版")
Return
btn2:
changeName("_更生日報2版")
Return
btn3:
changeName("_更生日報3版")
Return
btn4:
changeName("_更生日報4版")
Return
btn5:
changeName("_更生日報6版")
Return
btn6:
changeName("_更生日報17版")
Return
btn7:
changeName("_更生日報18版")
Return
btn8:
changeName("_自由時報A2版")
Return
btn9:
changeName("_自由時報A3版")
Return
btn10:
changeName("_自由時報A4版")
Return
btn11:
changeName("_自由時報A6版")
Return
btn12:
changeName("_自由時報A8版")
Return
btn13:
changeName("_自由時報A9版")
Return
btn14:
changeName("_自由時報A11版")
Return
btn15:
changeName("_自由時報A12版")
Return
btn16:
changeName("_自由時報A13版")
Return
btn17:
changeName("_自由時報A14版")
Return
btn18:
changeName("_自由時報A15版")
Return
btn19:
changeName("_自由時報A16版")
Return
btn20:
changeName("_自由時報B3版")
Return
btn21:
changeName("_自由時報B4版")
Return
btn22:
changeName("_自由時報S2版")
Return
btn23:
changeName("_自由時報S3版")
Return
btn24:
changeName("_聯合報A1版")
Return
btn25:
changeName("_聯合報A2版")
Return
btn26:
changeName("_聯合報A3版")
Return
btn27:
changeName("_聯合報A4版")
Return
btn28:
changeName("_聯合報A5版")
Return
btn29:
changeName("_聯合報A6版")
Return
btn30:
changeName("_聯合報A7版")
Return
btn31:
changeName("_聯合報A8版")
Return
btn32:
changeName("_聯合報A13版")
Return
btn33:
changeName("_聯合報B1版")
Return
btn34:
changeName("_聯合報B2版")
Return
btn35:
changeName("_聯合報B3版")
Return
btn36:
changeName("_聯合報B4版")
Return
btn37:
changeName("_中國時報A1版")
Return
btn38:
changeName("_中國時報A2版")
Return
btn39:
changeName("_中國時報A3版")
Return
btn40:
changeName("_中國時報A4版")
Return
btn41:
changeName("_中國時報A5版")
Return
btn42:
changeName("_中國時報A6版")
Return
btn43:
changeName("_中國時報A12版")
Return
btn44:
changeName("_中國時報A13版")
Return
btn45:
changeName("_中國時報B1版")
Return
btn46:
changeName("_中國時報B2版")
Return
btn47:
changeName("_中國時報B3版")
Return
btn48:
changeName("_中國時報C4版")
Return
btn49:
changeName("_中國時報D5版")
Return
btn50:
changeName("_台灣時報1版")
Return
btn51:
changeName("_台灣時報2版")
Return
btn52:
changeName("_台灣時報3版")
Return
btn53:
changeName("_台灣時報4版")
Return
btn54:
changeName("_台灣時報5版")
Return
btn55:
changeName("_台灣時報6版")
Return
btn56:
changeName("_台灣時報7版")
Return
btn57:
changeName("_台灣時報8版")
Return
btn58:
changeName("_台灣時報9版")
Return
btn59:
changeName("_台灣時報10版")
Return
btn60:
changeName("_台灣時報13版")
Return
btn61:
changeName("_台灣時報14版")
Return
btn62:
changeName("_台灣時報17版")
Return
btn63:
changeName("_台灣時報19版")
Return
btn64:
changeName("_人間福報1版")
Return
btn65:
changeName("_人間福報2版")
Return
btn66:
changeName("_人間福報3版")
Return
btn67:
changeName("_人間福報6版")
Return
btn68:
changeName("_人間福報10版")
Return
btn69:
changeName("_人間福報11版")
Return
btn70:
changeName("_人間福報A2版")
Return
btn71:
changeName("_人間福報A3版")
Return
btn72:
changeName("_台灣新生報1版")
Return
btn73:
changeName("_台灣新生報2版")
Return
btn74:
changeName("_台灣新生報3版")
Return
btn75:
changeName("_台灣新生報4版")
Return
btn76:
changeName("_台灣新生報5版")
Return
btn77:
changeName("_台灣新生報6版")
Return
btn78:
changeName("_台灣新生報7版")
Return
btn79:
changeName("_台灣新生報8版")
Return
btn80:
changeName("_台灣新生報15版")
Return
btn81:
changeName("_台灣新生報16版")
Return
btn82:
changeName("_中華日報A1版")
Return
btn83:
changeName("_中華日報A2版")
Return
btn84:
changeName("_中華日報A3版")
Return
btn85:
changeName("_中華日報A4版")
Return
btn86:
changeName("_中華日報D2版")
Return
btn87:
changeName("_工商時報A1版")
Return
btn88:
changeName("_工商時報A2版")
Return
btn89:
changeName("_工商時報A4版")
Return
btn90:
changeName("_工商時報A5版")
Return
btn91:
changeName("_青年日報1版")
Return
btn92:
changeName("_青年日報8版")
Return
btn93:
changeName("_青年日報12版")
Return
btn94:
changeName("_蘋果日報A4版")
Return
btn95:
changeName("_蘋果日報A8版")
Return
btn96:
changeName("_蘋果日報A9版")
Return
btn97:
changeName("_經濟日報A5版")
Return
btn98:
changeName("_經濟日報A6版")
Return
btn99:
changeName("_經濟日報A11版")
Return
btn100:
changeName("_聯合晚報B6版")
Return
btn101:
changeName("_聯合晚報B7版")
Return
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
	Sleep 300
	Run explorer.exe
	WinWait, ahk_class CabinetWClass
	Sleep 600
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
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 抓取由 "Windows 相片檢視器" 開啟的任意檔案
SetTitleMatchMode 2

; 按鈕選項
Gui, Add, Button, x11 y14 w60 h30 gbtn1, 更生18
Gui, Add, Button, x11 y44 w60 h30 gbtn2, 更生17
Gui, Add, Button, x11 y74 w60 h30 gbtn3, 更生3
Gui, Add, Button, x11 y104 w60 h30 gbtn4, 更生1
Gui, Add, Button, x11 y134 w60 h30 gbtn5, 自由A16
Gui, Add, Button, x11 y164 w60 h30 gbtn6, 自由A15
Gui, Add, Button, x11 y194 w60 h30 gbtn7, 自由A14
Gui, Add, Button, x11 y224 w60 h30 gbtn8, 自由A13
Gui, Add, Button, x11 y254 w60 h30 gbtn9, 自由A12
Gui, Add, Button, x11 y284 w60 h30 gbtn10, 自由A11
Gui, Add, Button, x11 y314 w60 h30 gbtn11, 自由A9
Gui, Add, Button, x11 y344 w60 h30 gbtn12, 自由A8
Gui, Add, Button, x11 y374 w60 h30 gbtn13, 自由A6
Gui, Add, Button, x11 y404 w60 h30 gbtn14, 自由A4
Gui, Add, Button, x11 y434 w60 h30 gbtn15, 自由A3
Gui, Add, Button, x11 y464 w60 h30 gbtn16, 自由A2
Gui, Add, Button, x11 y494 w60 h30 gbtn17, 自由B4
Gui, Add, Button, x11 y524 w60 h30 gbtn18, 自由B3
Gui, Add, Button, x11 y554 w60 h30 gbtn19, 自由S3
Gui, Add, Button, x11 y584 w60 h30 gbtn20, 聯合B4
Gui, Add, Button, x11 y614 w60 h30 gbtn21, 聯合B3
Gui, Add, Button, x11 y644 w60 h30 gbtn22, 聯合B2
Gui, Add, Button, x71 y14 w60 h30 gbtn23, 聯合B1
Gui, Add, Button, x71 y44 w60 h30 gbtn24, 聯合A13
Gui, Add, Button, x71 y74 w60 h30 gbtn25, 聯合A8
Gui, Add, Button, x71 y104 w60 h30 gbtn26, 聯合A6
Gui, Add, Button, x71 y134 w60 h30 gbtn27, 聯合A5
Gui, Add, Button, x71 y164 w60 h30 gbtn28, 聯合A4
Gui, Add, Button, x71 y194 w60 h30 gbtn29, 聯合A3
Gui, Add, Button, x71 y224 w60 h30 gbtn30, 聯合A2
Gui, Add, Button, x71 y254 w60 h30 gbtn31, 聯合A1
Gui, Add, Button, x71 y284 w60 h30 gbtn32, 中時B3
Gui, Add, Button, x71 y314 w60 h30 gbtn33, 中時B2
Gui, Add, Button, x71 y344 w60 h30 gbtn34, 中時B1
Gui, Add, Button, x71 y374 w60 h30 gbtn35, 中時A12
Gui, Add, Button, x71 y404 w60 h30 gbtn36, 中時A7
Gui, Add, Button, x71 y434 w60 h30 gbtn37, 中時A6
Gui, Add, Button, x71 y464 w60 h30 gbtn38, 中時A4
Gui, Add, Button, x71 y494 w60 h30 gbtn39, 中時A2
Gui, Add, Button, x71 y524 w60 h30 gbtn40, 中時A1
Gui, Add, Button, x71 y554 w60 h30 gbtn41, 中時C4
Gui, Add, Button, x71 y584 w60 h30 gbtn42, 中時D5
Gui, Add, Button, x71 y614 w60 h30 gbtn43, 台時19
Gui, Add, Button, x71 y644 w60 h30 gbtn44, 台時17
Gui, Add, Button, x131 y14 w60 h30 gbtn45, 台時14
Gui, Add, Button, x131 y44 w60 h30 gbtn46, 台時13
Gui, Add, Button, x131 y74 w60 h30 gbtn47, 台時10
Gui, Add, Button, x131 y104 w60 h30 gbtn48, 台時9
Gui, Add, Button, x131 y134 w60 h30 gbtn49, 台時8
Gui, Add, Button, x131 y164 w60 h30 gbtn50, 台時6
Gui, Add, Button, x131 y194 w60 h30 gbtn51, 台時5
Gui, Add, Button, x131 y224 w60 h30 gbtn52, 台時4
Gui, Add, Button, x131 y254 w60 h30 gbtn53, 台時3
Gui, Add, Button, x131 y284 w60 h30 gbtn54, 台時2
Gui, Add, Button, x131 y314 w60 h30 gbtn55, 台時1
Gui, Add, Button, x131 y344 w60 h30 gbtn56, 人福A3
Gui, Add, Button, x131 y374 w60 h30 gbtn57, 人福A2
Gui, Add, Button, x131 y404 w60 h30 gbtn58, 人福11
Gui, Add, Button, x131 y434 w60 h30 gbtn59, 人福10
Gui, Add, Button, x131 y464 w60 h30 gbtn60, 人福6
Gui, Add, Button, x131 y494 w60 h30 gbtn61, 人福3
Gui, Add, Button, x131 y524 w60 h30 gbtn62, 人福2
Gui, Add, Button, x131 y554 w60 h30 gbtn63, 人福1
Gui, Add, Button, x131 y584 w60 h30 gbtn64, 台新16
Gui, Add, Button, x131 y614 w60 h30 gbtn65, 台新15
Gui, Add, Button, x131 y644 w60 h30 gbtn66, 台新8
Gui, Add, Button, x191 y14 w60 h30 gbtn67, 台新7
Gui, Add, Button, x191 y44 w60 h30 gbtn68, 台新5
Gui, Add, Button, x191 y74 w60 h30 gbtn69, 台新3
Gui, Add, Button, x191 y104 w60 h30 gbtn70, 台新1
Gui, Add, Button, x191 y134 w60 h30 gbtn71, 中華D2
Gui, Add, Button, x191 y164 w60 h30 gbtn72, 中華A4
Gui, Add, Button, x191 y194 w60 h30 gbtn73, 中華A3
Gui, Add, Button, x191 y224 w60 h30 gbtn74, 中華A2
Gui, Add, Button, x191 y254 w60 h30 gbtn75, 中華A1
Gui, Add, Button, x191 y284 w60 h30 gbtn76, 工商A5
Gui, Add, Button, x191 y314 w60 h30 gbtn77, 工商A4
Gui, Add, Button, x191 y344 w60 h30 gbtn78, 工商A2
Gui, Add, Button, x191 y374 w60 h30 gbtn79, 工商A1
Gui, Add, Button, x191 y404 w60 h30 gbtn80, 青年12
Gui, Add, Button, x191 y434 w60 h30 gbtn81, 青年8
Gui, Add, Button, x191 y464 w60 h30 gbtn82, 青年1
Gui, Add, Button, x191 y494 w60 h30 gbtn83, 蘋果A9
Gui, Add, Button, x191 y524 w60 h30 gbtn84, 蘋果A8
Gui, Add, Button, x191 y554 w60 h30 gbtn85, 蘋果A4
Gui, Add, Button, x191 y584 w60 h30 gbtn86, 經濟A11
Gui, Add, Button, x191 y614 w60 h30 gbtn87, 經濟A6
Gui, Add, Button, x191 y644 w60 h30 gbtn88, 聯晚B7
Gui, Add, Button, x251 y14 w60 h30 gbtn89, 聯晚B6


;

Gui, Show, xcenter ycenter autosize, GUI改檔名程式
Return

;;
btn1:
changeName("_更生日報18版")
Return
btn2:
changeName("_更生日報17版")
Return
btn3:
changeName("_更生日報3版")
Return
btn4:
changeName("_更生日報1版")
Return
btn5:
changeName("_自由時報A16版")
Return
btn6:
changeName("_自由時報A15版")
Return
btn7:
changeName("_自由時報A14版")
Return
btn8:
changeName("_自由時報A13版")
Return
btn9:
changeName("_自由時報A12版")
Return
btn10:
changeName("_自由時報A11版")
Return
btn11:
changeName("_自由時報A9版")
Return
btn12:
changeName("_自由時報A8版")
Return
btn13:
changeName("_自由時報A6版")
Return
btn14:
changeName("_自由時報A4版")
Return
btn15:
changeName("_自由時報A3版")
Return
btn16:
changeName("_自由時報A2版")
Return
btn17:
changeName("_自由時報B4版")
Return
btn18:
changeName("_自由時報B3版")
Return
btn19:
changeName("_自由時報S3版")
Return
btn20:
changeName("_聯合報B4版")
Return
btn21:
changeName("_聯合報B3版")
Return
btn22:
changeName("_聯合報B2版")
Return
btn23:
changeName("_聯合報B1版")
Return
btn24:
changeName("_聯合報A13版")
Return
btn25:
changeName("_聯合報A8版")
Return
btn26:
changeName("_聯合報A6版")
Return
btn27:
changeName("_聯合報A5版")
Return
btn28:
changeName("_聯合報A4版")
Return
btn29:
changeName("_聯合報A3版")
Return
btn30:
changeName("_聯合報A2版")
Return
btn31:
changeName("_聯合報A1版")
Return
btn32:
changeName("_中國時報B3版")
Return
btn33:
changeName("_中國時報B2版")
Return
btn34:
changeName("_中國時報B1版")
Return
btn35:
changeName("_中國時報A12版")
Return
btn36:
changeName("_中國時報A7版")
Return
btn37:
changeName("_中國時報A6版")
Return
btn38:
changeName("_中國時報A4版")
Return
btn39:
changeName("_中國時報A2版")
Return
btn40:
changeName("_中國時報A1版")
Return
btn41:
changeName("_中國時報C4版")
Return
btn42:
changeName("_中國時報D5版")
Return
btn43:
changeName("_台灣時報19版")
Return
btn44:
changeName("_台灣時報17版")
Return
btn45:
changeName("_台灣時報14版")
Return
btn46:
changeName("_台灣時報13版")
Return
btn47:
changeName("_台灣時報10版")
Return
btn48:
changeName("_台灣時報9版")
Return
btn49:
changeName("_台灣時報8版")
Return
btn50:
changeName("_台灣時報6版")
Return
btn51:
changeName("_台灣時報5版")
Return
btn52:
changeName("_台灣時報4版")
Return
btn53:
changeName("_台灣時報3版")
Return
btn54:
changeName("_台灣時報2版")
Return
btn55:
changeName("_台灣時報1版")
Return
btn56:
changeName("_人間福報A3版")
Return
btn57:
changeName("_人間福報A2版")
Return
btn58:
changeName("_人間福報11版")
Return
btn59:
changeName("_人間福報10版")
Return
btn60:
changeName("_人間福報6版")
Return
btn61:
changeName("_人間福報3版")
Return
btn62:
changeName("_人間福報2版")
Return
btn63:
changeName("_人間福報1版")
Return
btn64:
changeName("_台灣新生報16版")
Return
btn65:
changeName("_台灣新生報15版")
Return
btn66:
changeName("_台灣新生報8版")
Return
btn67:
changeName("_台灣新生報7版")
Return
btn68:
changeName("_台灣新生報5版")
Return
btn69:
changeName("_台灣新生報3版")
Return
btn70:
changeName("_台灣新生報1版")
Return
btn71:
changeName("_中華日報D2版")
Return
btn72:
changeName("_中華日報A4版")
Return
btn73:
changeName("_中華日報A3版")
Return
btn74:
changeName("_中華日報A2版")
Return
btn75:
changeName("_中華日報A1版")
Return
btn76:
changeName("_工商時報A5版")
Return
btn77:
changeName("_工商時報A4版")
Return
btn78:
changeName("_工商時報A2版")
Return
btn79:
changeName("_工商時報A1版")
Return
btn80:
changeName("_青年日報12版")
Return
btn81:
changeName("_青年日報8版")
Return
btn82:
changeName("_青年日報1版")
Return
btn83:
changeName("_蘋果日報A9版")
Return
btn84:
changeName("_蘋果日報A8版")
Return
btn85:
changeName("_蘋果日報A4版")
Return
btn86:
changeName("_經濟日報A11版")
Return
btn87:
changeName("_經濟日報A6版")
Return
btn88:
changeName("_聯合晚報B7版")
Return
btn89:
changeName("_聯合晚報B6版")
Return
;;

changeName(STRING)
{
#IfWinExist Windows 相片檢視器
{
	#IfWinExist 記事本
	{		
	WinActivate, Windows 相片檢視器
	WinWait, Windows 相片檢視器
	Send, {Alt down}{Enter}{Alt up}
	WinWait, 內容
	Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
	Send, {End}
	Send, %STRING%
	Send, {Enter}
	Return
	}
}
}

; 按X關閉程式
GuiClose:
ExitApp
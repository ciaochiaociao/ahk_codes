#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ����� "Windows �ۤ��˵���" �}�Ҫ����N�ɮ�
SetTitleMatchMode 2

IfWinNotExist Windows �ۤ��˵���
{
	MsgBox, �Х��}���W�����O���s�D�ų���
	WinWait, Windows �ۤ��˵���
}
WinActivate Windows �ۤ��˵���
WinMove, Windows �ۤ��˵���,, 0,0, 672, 763

;; ���s�ﶵ
Gui, Add, Button, x11 y14 w60 h30 gbtn1, ���1
Gui, Add, Button, x11 y44 w60 h30 gbtn2, ���2
Gui, Add, Button, x11 y74 w60 h30 gbtn3, ���3
Gui, Add, Button, x11 y104 w60 h30 gbtn4, ���4
Gui, Add, Button, x11 y134 w60 h30 gbtn5, ���6
Gui, Add, Button, x11 y164 w60 h30 gbtn6, ���17
Gui, Add, Button, x11 y194 w60 h30 gbtn7, ���18
Gui, Add, Button, x11 y224 w60 h30 gbtn8, �ۥ�A2
Gui, Add, Button, x11 y254 w60 h30 gbtn9, �ۥ�A3
Gui, Add, Button, x11 y284 w60 h30 gbtn10, �ۥ�A4
Gui, Add, Button, x11 y314 w60 h30 gbtn11, �ۥ�A6
Gui, Add, Button, x11 y344 w60 h30 gbtn12, �ۥ�A8
Gui, Add, Button, x11 y374 w60 h30 gbtn13, �ۥ�A9
Gui, Add, Button, x11 y404 w60 h30 gbtn14, �ۥ�A11
Gui, Add, Button, x11 y434 w60 h30 gbtn15, �ۥ�A12
Gui, Add, Button, x11 y464 w60 h30 gbtn16, �ۥ�A13
Gui, Add, Button, x11 y494 w60 h30 gbtn17, �ۥ�A14
Gui, Add, Button, x11 y524 w60 h30 gbtn18, �ۥ�A15
Gui, Add, Button, x11 y554 w60 h30 gbtn19, �ۥ�A16
Gui, Add, Button, x11 y584 w60 h30 gbtn20, �ۥ�B3
Gui, Add, Button, x11 y614 w60 h30 gbtn21, �ۥ�B4
Gui, Add, Button, x11 y644 w60 h30 gbtn22, �ۥ�S2
Gui, Add, Button, x11 y674 w60 h30 gbtn23, �ۥ�S3
Gui, Add, Button, x71 y14 w60 h30 gbtn24, �p�XA1
Gui, Add, Button, x71 y44 w60 h30 gbtn25, �p�XA2
Gui, Add, Button, x71 y74 w60 h30 gbtn26, �p�XA3
Gui, Add, Button, x71 y104 w60 h30 gbtn27, �p�XA4
Gui, Add, Button, x71 y134 w60 h30 gbtn28, �p�XA5
Gui, Add, Button, x71 y164 w60 h30 gbtn29, �p�XA6
Gui, Add, Button, x71 y194 w60 h30 gbtn30, �p�XA7
Gui, Add, Button, x71 y224 w60 h30 gbtn31, �p�XA8
Gui, Add, Button, x71 y254 w60 h30 gbtn32, �p�XA13
Gui, Add, Button, x71 y284 w60 h30 gbtn33, �p�XB1
Gui, Add, Button, x71 y314 w60 h30 gbtn34, �p�XB2
Gui, Add, Button, x71 y344 w60 h30 gbtn35, �p�XB3
Gui, Add, Button, x71 y374 w60 h30 gbtn36, �p�XB4
Gui, Add, Button, x71 y404 w60 h30 gbtn37, ����A1
Gui, Add, Button, x71 y434 w60 h30 gbtn38, ����A2
Gui, Add, Button, x71 y464 w60 h30 gbtn39, ����A3
Gui, Add, Button, x71 y494 w60 h30 gbtn40, ����A4
Gui, Add, Button, x71 y524 w60 h30 gbtn41, ����A5
Gui, Add, Button, x71 y554 w60 h30 gbtn42, ����A6
Gui, Add, Button, x71 y584 w60 h30 gbtn43, ����A12
Gui, Add, Button, x71 y614 w60 h30 gbtn44, ����A13
Gui, Add, Button, x71 y644 w60 h30 gbtn45, ����B1
Gui, Add, Button, x71 y674 w60 h30 gbtn46, ����B2
Gui, Add, Button, x131 y14 w60 h30 gbtn47, ����B3
Gui, Add, Button, x131 y44 w60 h30 gbtn48, ����C4
Gui, Add, Button, x131 y74 w60 h30 gbtn49, ����D5
Gui, Add, Button, x131 y104 w60 h30 gbtn50, �x��1
Gui, Add, Button, x131 y134 w60 h30 gbtn51, �x��2
Gui, Add, Button, x131 y164 w60 h30 gbtn52, �x��3
Gui, Add, Button, x131 y194 w60 h30 gbtn53, �x��4
Gui, Add, Button, x131 y224 w60 h30 gbtn54, �x��5
Gui, Add, Button, x131 y254 w60 h30 gbtn55, �x��6
Gui, Add, Button, x131 y284 w60 h30 gbtn56, �x��7
Gui, Add, Button, x131 y314 w60 h30 gbtn57, �x��8
Gui, Add, Button, x131 y344 w60 h30 gbtn58, �x��9
Gui, Add, Button, x131 y374 w60 h30 gbtn59, �x��10
Gui, Add, Button, x131 y404 w60 h30 gbtn60, �x��13
Gui, Add, Button, x131 y434 w60 h30 gbtn61, �x��14
Gui, Add, Button, x131 y464 w60 h30 gbtn62, �x��17
Gui, Add, Button, x131 y494 w60 h30 gbtn63, �x��19
Gui, Add, Button, x131 y524 w60 h30 gbtn64, �H��1
Gui, Add, Button, x131 y554 w60 h30 gbtn65, �H��2
Gui, Add, Button, x131 y584 w60 h30 gbtn66, �H��3
Gui, Add, Button, x131 y614 w60 h30 gbtn67, �H��6
Gui, Add, Button, x131 y644 w60 h30 gbtn68, �H��10
Gui, Add, Button, x131 y674 w60 h30 gbtn69, �H��11
Gui, Add, Button, x191 y14 w60 h30 gbtn70, �H��A2
Gui, Add, Button, x191 y44 w60 h30 gbtn71, �H��A3
Gui, Add, Button, x191 y74 w60 h30 gbtn72, �x�s1
Gui, Add, Button, x191 y104 w60 h30 gbtn73, �x�s2
Gui, Add, Button, x191 y134 w60 h30 gbtn74, �x�s3
Gui, Add, Button, x191 y164 w60 h30 gbtn75, �x�s4
Gui, Add, Button, x191 y194 w60 h30 gbtn76, �x�s5
Gui, Add, Button, x191 y224 w60 h30 gbtn77, �x�s6
Gui, Add, Button, x191 y254 w60 h30 gbtn78, �x�s7
Gui, Add, Button, x191 y284 w60 h30 gbtn79, �x�s8
Gui, Add, Button, x191 y314 w60 h30 gbtn80, �x�s15
Gui, Add, Button, x191 y344 w60 h30 gbtn81, �x�s16
Gui, Add, Button, x191 y374 w60 h30 gbtn82, ����A1
Gui, Add, Button, x191 y404 w60 h30 gbtn83, ����A2
Gui, Add, Button, x191 y434 w60 h30 gbtn84, ����A3
Gui, Add, Button, x191 y464 w60 h30 gbtn85, ����A4
Gui, Add, Button, x191 y494 w60 h30 gbtn86, ����D2
Gui, Add, Button, x191 y524 w60 h30 gbtn87, �u��A1
Gui, Add, Button, x191 y554 w60 h30 gbtn88, �u��A2
Gui, Add, Button, x191 y584 w60 h30 gbtn89, �u��A4
Gui, Add, Button, x191 y614 w60 h30 gbtn90, �u��A5
Gui, Add, Button, x191 y644 w60 h30 gbtn91, �C�~1
Gui, Add, Button, x191 y674 w60 h30 gbtn92, �C�~8
Gui, Add, Button, x251 y14 w60 h30 gbtn93, �C�~12
Gui, Add, Button, x251 y44 w60 h30 gbtn94, ī�GA4
Gui, Add, Button, x251 y74 w60 h30 gbtn95, ī�GA8
Gui, Add, Button, x251 y104 w60 h30 gbtn96, ī�GA9
Gui, Add, Button, x251 y134 w60 h30 gbtn97, �g��A5
Gui, Add, Button, x251 y164 w60 h30 gbtn98, �g��A6
Gui, Add, Button, x251 y194 w60 h30 gbtn99, �g��A11
Gui, Add, Button, x251 y224 w60 h30 gbtn100, �p��B6
Gui, Add, Button, x251 y254 w60 h30 gbtn101, �p��B7
;;

Gui, Add, Button, Section w30 gaddbtn1, ���
Gui, Add, Button, x251 yp+26 w30 gaddbtn2, �ۥ�
Gui, Add, Button, x251 yp+26 w30 gaddbtn3, �p�X
Gui, Add, Button, x251 yp+26 w30 gaddbtn4, ����
Gui, Add, Button, x251 yp+26 w30 gaddbtn5, �x��
Gui, Add, Button, x251 yp+26 w30 gaddbtn6, �H��
Gui, Add, Button, x251 yp+26 w30 gaddbtn7, �x�s
Gui, Add, Button, x251 yp+26 w30 gaddbtn8, ����
Gui, Add, Button, x251 yp+26 w30 gaddbtn9, �u��
Gui, Add, Button, x251 yp+26 w30 gaddbtn10, �C�~
Gui, Add, Button, x251 yp+26 w30 gaddbtn11, ī�G
Gui, Add, Button, x251 yp+26 w30 gaddbtn12, �g��
Gui, Add, Button, x251 yp+26 w30 gaddbtn13, �p��

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
Gui, Add, Button, w60 xp-30 yp+26 gLastPage, �W�@��
Gui, Add, Button, w60 xp yp+26 gNextPage, �U�@��
Gui, Add, Button, w60 xp yp+26 gUndoAdd, �_��

Gui, Show, xcenter ycenter autosize, GUI���ɦW�{��
WinMove, GUI���ɦW�{�� ahk_class AutoHotkeyGUI,, 677, 5

Return

;;
btn1:
changeName("_��ͤ��1��")
Return
btn2:
changeName("_��ͤ��2��")
Return
btn3:
changeName("_��ͤ��3��")
Return
btn4:
changeName("_��ͤ��4��")
Return
btn5:
changeName("_��ͤ��6��")
Return
btn6:
changeName("_��ͤ��17��")
Return
btn7:
changeName("_��ͤ��18��")
Return
btn8:
changeName("_�ۥѮɳ�A2��")
Return
btn9:
changeName("_�ۥѮɳ�A3��")
Return
btn10:
changeName("_�ۥѮɳ�A4��")
Return
btn11:
changeName("_�ۥѮɳ�A6��")
Return
btn12:
changeName("_�ۥѮɳ�A8��")
Return
btn13:
changeName("_�ۥѮɳ�A9��")
Return
btn14:
changeName("_�ۥѮɳ�A11��")
Return
btn15:
changeName("_�ۥѮɳ�A12��")
Return
btn16:
changeName("_�ۥѮɳ�A13��")
Return
btn17:
changeName("_�ۥѮɳ�A14��")
Return
btn18:
changeName("_�ۥѮɳ�A15��")
Return
btn19:
changeName("_�ۥѮɳ�A16��")
Return
btn20:
changeName("_�ۥѮɳ�B3��")
Return
btn21:
changeName("_�ۥѮɳ�B4��")
Return
btn22:
changeName("_�ۥѮɳ�S2��")
Return
btn23:
changeName("_�ۥѮɳ�S3��")
Return
btn24:
changeName("_�p�X��A1��")
Return
btn25:
changeName("_�p�X��A2��")
Return
btn26:
changeName("_�p�X��A3��")
Return
btn27:
changeName("_�p�X��A4��")
Return
btn28:
changeName("_�p�X��A5��")
Return
btn29:
changeName("_�p�X��A6��")
Return
btn30:
changeName("_�p�X��A7��")
Return
btn31:
changeName("_�p�X��A8��")
Return
btn32:
changeName("_�p�X��A13��")
Return
btn33:
changeName("_�p�X��B1��")
Return
btn34:
changeName("_�p�X��B2��")
Return
btn35:
changeName("_�p�X��B3��")
Return
btn36:
changeName("_�p�X��B4��")
Return
btn37:
changeName("_����ɳ�A1��")
Return
btn38:
changeName("_����ɳ�A2��")
Return
btn39:
changeName("_����ɳ�A3��")
Return
btn40:
changeName("_����ɳ�A4��")
Return
btn41:
changeName("_����ɳ�A5��")
Return
btn42:
changeName("_����ɳ�A6��")
Return
btn43:
changeName("_����ɳ�A12��")
Return
btn44:
changeName("_����ɳ�A13��")
Return
btn45:
changeName("_����ɳ�B1��")
Return
btn46:
changeName("_����ɳ�B2��")
Return
btn47:
changeName("_����ɳ�B3��")
Return
btn48:
changeName("_����ɳ�C4��")
Return
btn49:
changeName("_����ɳ�D5��")
Return
btn50:
changeName("_�x�W�ɳ�1��")
Return
btn51:
changeName("_�x�W�ɳ�2��")
Return
btn52:
changeName("_�x�W�ɳ�3��")
Return
btn53:
changeName("_�x�W�ɳ�4��")
Return
btn54:
changeName("_�x�W�ɳ�5��")
Return
btn55:
changeName("_�x�W�ɳ�6��")
Return
btn56:
changeName("_�x�W�ɳ�7��")
Return
btn57:
changeName("_�x�W�ɳ�8��")
Return
btn58:
changeName("_�x�W�ɳ�9��")
Return
btn59:
changeName("_�x�W�ɳ�10��")
Return
btn60:
changeName("_�x�W�ɳ�13��")
Return
btn61:
changeName("_�x�W�ɳ�14��")
Return
btn62:
changeName("_�x�W�ɳ�17��")
Return
btn63:
changeName("_�x�W�ɳ�19��")
Return
btn64:
changeName("_�H���ֳ�1��")
Return
btn65:
changeName("_�H���ֳ�2��")
Return
btn66:
changeName("_�H���ֳ�3��")
Return
btn67:
changeName("_�H���ֳ�6��")
Return
btn68:
changeName("_�H���ֳ�10��")
Return
btn69:
changeName("_�H���ֳ�11��")
Return
btn70:
changeName("_�H���ֳ�A2��")
Return
btn71:
changeName("_�H���ֳ�A3��")
Return
btn72:
changeName("_�x�W�s�ͳ�1��")
Return
btn73:
changeName("_�x�W�s�ͳ�2��")
Return
btn74:
changeName("_�x�W�s�ͳ�3��")
Return
btn75:
changeName("_�x�W�s�ͳ�4��")
Return
btn76:
changeName("_�x�W�s�ͳ�5��")
Return
btn77:
changeName("_�x�W�s�ͳ�6��")
Return
btn78:
changeName("_�x�W�s�ͳ�7��")
Return
btn79:
changeName("_�x�W�s�ͳ�8��")
Return
btn80:
changeName("_�x�W�s�ͳ�15��")
Return
btn81:
changeName("_�x�W�s�ͳ�16��")
Return
btn82:
changeName("_���ؤ��A1��")
Return
btn83:
changeName("_���ؤ��A2��")
Return
btn84:
changeName("_���ؤ��A3��")
Return
btn85:
changeName("_���ؤ��A4��")
Return
btn86:
changeName("_���ؤ��D2��")
Return
btn87:
changeName("_�u�Ӯɳ�A1��")
Return
btn88:
changeName("_�u�Ӯɳ�A2��")
Return
btn89:
changeName("_�u�Ӯɳ�A4��")
Return
btn90:
changeName("_�u�Ӯɳ�A5��")
Return
btn91:
changeName("_�C�~���1��")
Return
btn92:
changeName("_�C�~���8��")
Return
btn93:
changeName("_�C�~���12��")
Return
btn94:
changeName("_ī�G���A4��")
Return
btn95:
changeName("_ī�G���A8��")
Return
btn96:
changeName("_ī�G���A9��")
Return
btn97:
changeName("_�g�٤��A5��")
Return
btn98:
changeName("_�g�٤��A6��")
Return
btn99:
changeName("_�g�٤��A11��")
Return
btn100:
changeName("_�p�X�߳�B6��")
Return
btn101:
changeName("_�p�X�߳�B7��")
Return
;;

;;
addbtn1:
	Gui, Submit, NoHide
	MyEdit1 = _��ͤ��%MyEdit1%��
	changeName(MyEdit1)
	Return
addbtn2:
	Gui, Submit, NoHide
	MyEdit2 = _�ۥѮɳ�%MyEdit2%��
	changeName(MyEdit2)
	Return
addbtn3:
	Gui, Submit, NoHide
	MyEdit3 = _�p�X��%MyEdit3%��
	changeName(MyEdit3)
	Return
addbtn4:
	Gui, Submit, NoHide
	MyEdit4 = _����ɳ�%MyEdit4%��
	changeName(MyEdit4)
	Return
addbtn5:
	Gui, Submit, NoHide
	MyEdit5 = _�x�W�ɳ�%MyEdit5%��
	changeName(MyEdit5)
	Return
addbtn6:
	Gui, Submit, NoHide
	MyEdit6 = _�H���ֳ�%MyEdit6%��
	changeName(MyEdit6)
	Return
addbtn7:
	Gui, Submit, NoHide
	MyEdit7 = _�x�W�s�ͳ�%MyEdit7%��
	changeName(MyEdit7)
	Return
addbtn8:
	Gui, Submit, NoHide
	MyEdit8 = _���ؤ��%MyEdit8%��
	changeName(MyEdit8)
	Return
addbtn9:
	Gui, Submit, NoHide
	MyEdit9 = _�u�Ӯɳ�%MyEdit9%��
	changeName(MyEdit9)
	Return
addbtn10:
	Gui, Submit, NoHide
	MyEdit10 = _�C�~���%MyEdit10%��
	changeName(MyEdit10)
	Return
addbtn11:
	Gui, Submit, NoHide
	MyEdit11 = _ī�G���%MyEdit11%��
	changeName(MyEdit11)
	Return
addbtn12:
	Gui, Submit, NoHide
	MyEdit12 = _�g�٤��%MyEdit12%��
	changeName(MyEdit12)
	Return
addbtn13:
	Gui, Submit, NoHide
	MyEdit13 = _�p�X�߳�%MyEdit13%��
	changeName(MyEdit13)
	Return
;;

;;
UndoAdd:
	WinActivate Windows �ۤ��˵���
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
	WinActivate Windows �ۤ��˵���
	Send, {Left}
Return
NextPage:
	WinActivate Windows �ۤ��˵���
	Send, {Right}
Return
;;

changeName(STRING)
{
If WinExist(Windows �ۤ��˵���) & WinExist(�O�ƥ�)
{
	WinActivate, Windows �ۤ��˵���
	WinWait, Windows �ۤ��˵���
	Send, {Alt down}{Enter}{Alt up}
	WinWait, ���e
	Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
	Send, {End}
	Send, %STRING%
	Send, {Enter}
	WinWaitActive, Windows �ۤ��˵���
	Send, {Right}
	Sleep, 500
	WinGetTitle, Title, A
	If (RegExMatch(Title,"_\p{Han}{1,4}��([A-Z]){0,2}(\d){1,2}��"))
		MsgBox, ����
	Return
}
}

; ��X�����{��
GuiClose:
ExitApp
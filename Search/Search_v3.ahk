#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\user\Desktop\Search ; Ensures a consistent starting directory.

global FolderPath := "0"
global AllFoundFilesName = "無"
global FolderPath := ""
FileRemoveDir, 搜尋結果, 1
FileCreateDir, 搜尋結果
FileRead, OrigKeywords, keywords.txt

;-----建立GUI介面-----
Gui +Resize
;Gui, Add, Button, x gButtonClear, Clear List
Gui, Add, Button, Default gReset, 重設
Gui, Add, Button, xp+40 gButtonAddFolder, 增加資料夾
Gui, Add, Button, xp+80 gSaveAs, 儲存檔案
Gui, Add, ListView, xm r5 w500 vSearchFolderPath, 搜尋路徑
Menu, MyContextMenu2, Add, 移除檔案, ContextClearRows2
Gui, Add, ListView, xm r20 w500 Center vMyListView gMyListView, 搜尋字|檔名|路徑
Gui, Add, Text, yp+360, 完成進度
Gui, Add, Progress, xp+60 yp-3 w438 h20 cBBBBBB -Smooth BackgroundDDDDDD vMyProgress Range0-100
Gui, Add, Text, ys+10, 搜尋字:
Gui, Add, Edit, w120 h465 vMyEdit, %OrigKeywords%
Gui, Add, Button, w100 Center gSearchBtn, 搜尋
;ImageListID2 := IL_Create(10, 10, true)
;LV_SetImageList(ImageListID1)
Menu, MyContextMenu, Add, 打開檔案, ContextOpenFile
Menu, MyContextMenu, Add, 移除檔案, ContextClearRows
Menu, MyContextMenu, Default, 打開檔案
LV_ModifyCol(3, 0)
Gui, Show
Return

;----關閉程式----
GuiClose:
ExitApp

;----重設按鈕----
Reset:
	FileRemoveDir, 搜尋結果, 1
	FileCreateDir, 搜尋結果
	Gui, ListView, SearchFolderPath
	LV_Delete()
	Gui, ListView, MyListView
	LV_Delete()
	AllFoundFilesName = 第一個
Return

;----增加資料夾按鈕----
ButtonAddFolder:
	FileSelect()
Return

;----雙擊選項、右鍵打開功能----
ContextOpenFile:
MyListView:
	if 1 ;A_GuiEvent := RightClick  ; There are many other possible values the script can check.
	{
	    FocusedRowNumber := LV_GetNext(0, "F")  ; Find the focused row.
	    if not FocusedRowNumber  ; No row is focused.
		return
	    LV_GetText(RowFullPath, FocusedRowNumber, 3) ; Get the text of the first field.
	    Run %RowFullPath%,, UseErrorLevel
	    if ErrorLevel
	        MsgBox 無法打開"%RowFullPath%".
		    ToolTip 你雙擊了第 %A_EventInfo%行. %RowFullPath%
		    ;To Remove tooltip
			SetTimer, RemoveToolTip, 1500
		Return

		; RemoveToolTip Gosub
	    RemoveToolTip:
		    SetTimer, RemoveToolTip, Off
		    ToolTip
	    Return
	}
Return


;----右鍵刪除功能----
ContextClearRows:
	LV_Delete(LV_GetNext())
Return

ContextClearRows2:
	Gui, ListView, SearchFolderPath
	LV_Delete(LV_GetNext())
	Gui, ListView, MyListView
Return

;----右鍵功能表----
GuiContextMenu:  ; Launched in response to a right-click or press of the Apps key.
	if A_GuiControl = MyListView  ; Display the menu only for clicks inside the ListView.
	; Show the menu at the provided coordinates, A_GuiX and A_GuiY.  These should be used
	; because they provide correct coordinates even if the user pressed the Apps key:
		Menu, MyContextMenu, Show, %A_GuiX%, %A_GuiY%
	else if A_GuiControl = SearchFolderPath
		Menu, MyContextMenu2, Show, %A_GuiX%, %A_GuiY%
	return
return
;----儲存檔案按鈕----
SaveAs:
	LastFoundKeywords = 無

	Count = 0
	Loop % LV_GetCount() 
	{
		LV_GetText(Keywords, A_Index, 1)
		LV_GetText(SaveName, A_Index, 2)
		LV_GetText(SavedFilePath, A_Index, 3)

		if LastFoundKeywords <> %Keywords%
			{
				++Count
				SaveFileDir = 搜尋結果\%Count%. %Keywords%
				FileCreateDir, %SaveFileDir%
			}
		FileCopy, %SavedFilePath%, %SaveFileDir%
		LastFoundKeywords = %Keywords%
		GuiControl,, MyProgress, % A_Index/LV_GetCount() *100
	}
	Loop, %A_WorkingDir%\搜尋結果\*.*, 1, 1 ;最後要加/進去搜尋結果裡面找
	{	
		If (A_LoopFileName)
		{	
			MsgBox, 4, 訊息, % "`t儲存檔案完成`n`t是否開啟檔案?",
			IfMsgBox, Yes
				Run, %A_WorkingDir%/搜尋結果
			Return
			Break
		}
	}
		
Return

;----搜尋功能(依照關鍵字)----
SearchBtn:
	;----更新搜尋關鍵字按鈕----
	Gui, Submit, NoHide
	LV_Delete()
	FileDelete, keywords.txt
	FileAppend, %MyEdit%, keywords.txt
	Search(0)
Return

Search(IfKeep){ ;0-重新搜尋 / 1-保留現有結果搜尋其他符合結果
	;刪除現有結果
	If IfKeep = 0
		AllFoundFilesName = 第一個

	;重設
	Loop, Read, keywords.txt
		TotalNumOfKeywords = %A_Index%
	GuiControl,, MyProgress, 0

	Loop, Read, keywords.txt
	{
		Loop Files, %FolderPath%\*.*, R  ; Recurse into subfolders.
		{
		NeedlePattern = %A_LoopReadLine%(.)*_(.)*報(.)*版(.)*
			If(RegExMatch(A_LoopFileName, NeedlePattern))
			{
				If A_LoopFileName not in %AllFoundFilesName%
				{
				LV_Add("", A_LoopReadLine, A_LoopFileName, A_LoopFileLongPath)
				AllFoundFilesName = %AllFoundFilesName%,%A_LoopFileName%
				}
				LV_ModifyCol(1, "AutoHdr")  ; Auto-size each column to fit its contents.
				LV_ModifyCol(2, "AutoHdr")
			}
		}
	GuiControl,, MyProgress, % A_Index/TotalNumOfKeywords*100
	}
} ;End of Search Function
;;

;-----選擇檔案函式-----
FileSelect(){
	Gui +OwnDialogs
	FileSelectFolder, FolderPath, E:\新聞剪報 *E:\新聞剪報\2017\201704, 0 M, 選擇資料夾讀取
	if not FolderPath  ; The user canceled the dialog.
	    return
	; Check if the last character of the folder name is a backslash, which happens for root
	; directories such as C:\. If it is, remove it to prevent a double-backslash later on.
	StringRight, LastChar, FolderPath, 1
	if LastChar = \
	    StringTrimRight, FolderPath, FolderPath, 1  ; Remove the trailing backslash.
	Gui, ListView, SearchFolderPath
	;MsgBox % LV_Delete()
	LV_Add("", FolderPath)
	LV_ModifyCol(1, "AutoHdr")
	Gui, ListView, MyListView
	Return
}
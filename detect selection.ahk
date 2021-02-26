F3::
StoredClip := ClipboardAll
Clipboard = 
Send, ^c
ClipWait, 0, 1 ; wait until clipboard contains data
If Clipboard = 
MsgBox, , , No text selected., 1.2
Else
MsgBox, , , Text is selected., 1.2
Clipboard := StoredClip
Return
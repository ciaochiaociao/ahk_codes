F3::
  MsgBox % IfSelected()

IfSelected() {
  Clipboard := ""
  Send, ^c
  ClipWait, 2
  If Clipboard
    return True
  Else
    return False
}
RunWait, C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\寫GUI程式碼的程式v2.ahk
FileDelete, C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\程式碼生成_最終程式碼.ahk
FileInput := FileOpen("C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\程式碼生成_初始程式碼.txt", "r")
FileOutput := FileOpen("C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\程式碼生成_最終程式碼.ahk", "a")
BtnGuiFile := FileOpen("C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnGui.txt", "r")
BtnFtnFile := FileOpen("C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\BtnFtn.txt", "r")

String := ""
Loop
{
String := FileInput.ReadLine()
	If(RegExMatch(String, ";btnGuiProgramCode"))
	{
		break
	}
	else
	{
		FileOutput.Write(String)
	}
}
FileOutput.Write(BtnGuiFile.Read())

String := ""
Loop
{
String := FileInput.ReadLine()
	If(RegExMatch(String, ";btnFtnProgramCode"))
	{
		break
	}
	else
	{
		FileOutput.Write(String)
	}
}

FileOutput.Write(BtnFtnFile.Read())

Loop
{
String := FileInput.ReadLine()
FileOutput.Write(String)
if String = 
break
}

RunWait, %comspec% /c ""C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in "C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\程式碼生成_最終程式碼.ahk" /out "C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\程式碼生成_最終程式碼.exe" /icon "C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\fella.ico""
Run, C:\Users\user\Desktop\AHK\My Programs\GUI改檔名程式後台\程式碼生成_最終程式碼.ahk

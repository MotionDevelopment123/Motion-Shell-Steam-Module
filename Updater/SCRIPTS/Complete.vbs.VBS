Set obj = CreateObject("Scripting.FileSystemObject")
Set objFile = obj.OpenTextFile("C:\Steam Deck Launcher\Updater\INSTALLED.VERSION")

' Read file
Steamloc = objFile.ReadLine
MsgBox(Steamloc),0, "SDL - Update complete"
	Dim Shell
	Set Shell = WScript.CreateObject ("WScript.Shell")
	Shell.CurrentDirectory = "C:\Steam Deck Launcher\"
	Shell.run "SDL.exe"
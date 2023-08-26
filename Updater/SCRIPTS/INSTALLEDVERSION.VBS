Set obj = CreateObject("Scripting.FileSystemObject")
Set objFile = obj.OpenTextFile("C:\Steam Deck Launcher\Updater\INSTALLED.VERSION")

' Read file
Steamloc = objFile.ReadLine
MsgBox(Steamloc),0, "SDL - VERSION"
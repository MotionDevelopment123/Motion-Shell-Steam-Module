Set obj = CreateObject("Scripting.FileSystemObject")
Set objFile = obj.OpenTextFile("C:\Steam Deck Launcher\INSTALLED.VERSION")

' Read file
Steamloc = objFile.ReadALL
MsgBox(Steamloc),0, "SDL - VERSION"
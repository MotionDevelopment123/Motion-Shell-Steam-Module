Set obj = CreateObject("Scripting.FileSystemObject")
Set objFile = obj.OpenTextFile("INSTALLED.VERSION")

' Read file
Steamloc = objFile.ReadLine
MsgBox(Steamloc)   
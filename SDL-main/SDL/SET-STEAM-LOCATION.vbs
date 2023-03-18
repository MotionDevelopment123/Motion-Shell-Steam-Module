Dim shell,a

 a = InputBox("Enter the Location of your Steam.exe, please put quotation marks around any folder names with spaces, this can be changed anytime from the start menu. Pressing Cancel will set the location to blank!","Set Steam Location","C\")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("STEAM.LOCATION", True)
objFile.WriteLine ""& a &""
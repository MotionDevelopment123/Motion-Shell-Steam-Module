 Dim shell,a
Shell.CurrentDirectory = "C:\Shared Folder\GitHub\SDL\Updater"
 a=InputBox("Enter the Location of your Steam.exe, please put quotation marks around any folder names with spaces Pressing Cancel will set the location to blank!","Set Steam Location","""C:\"Program Files (x86)"\Steam\steam.exe""")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("STEAM.LOCATION", True)
objFile.WriteLine ""& a &""
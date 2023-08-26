intAnswer = _
    Msgbox("Do you want to update to the latest version of SDL?", _
        vbYesNo, "SDL - Updater")
If intAnswer = vbYes Then
    Dim Shell
	Set Shell = WScript.CreateObject ("WScript.Shell")
	Shell.CurrentDirectory = "C:\Steam Deck Launcher\Updater\SCRIPTS"
	Shell.run "Download.bat", 0, True
End If
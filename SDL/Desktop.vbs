Dim Shell
Set Shell = WScript.CreateObject ("WScript.Shell")
Shell.CurrentDirectory = "C:\Steam Deck Launcher"
Shell.run "Desktop.bat", 0, True
Dim Shell
Set Shell = WScript.CreateObject ("WScript.Shell")
Shell.CurrentDirectory = "C:\Steam Deck Launcher\Installer"
Shell.run "Installer.bat", 0, True
Dim Shell
Set Shell = WScript.CreateObject ("WScript.Shell")
Shell.CurrentDirectory = "C:\Shared Folder\GitHub\SDL\Updater\SCRIPTS"
Shell.run "Updater.bat", 0, True
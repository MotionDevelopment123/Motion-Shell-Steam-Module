; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Steam Deck Launcher"
#define MyAppVersion "3.0.0.2"
#define MyAppPublisher "Motion Development"
#define MyAppURL "https://sites.google.com/view/steam-deck-launcher/"
#define MyAppUpdatesURL "https://github.com/MotionDevelopment123/SDL/releases/latest" 

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{9286F503-5E0B-448F-8061-99C3A47E6810}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppUpdatesURL}
DefaultDirName=C:\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
InfoBeforeFile=C:\Shared Folder\GitHub\SDL\Installer\SETUP\SETUPINFO.rtf
InfoAfterFile=C:\Shared Folder\GitHub\SDL\Installer\SETUP\COMPLETE.rtf
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=C:\Shared Folder
OutputBaseFilename=SDL Installer 3.0.0.2
SetupIconFile=C:\Shared Folder\GitHub\SDL\SDL\ICON.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows NT\CurrentVersion\Winlogon"; ValueType: string; ValueName: "shell"; ValueData: "C:\Steam Deck Launcher\SDL.exe"
Root: HKCU; Subkey: "Software\Microsoft\Windows NT\CurrentVersion\Winlogon"; ValueType: string; ValueName: "shell"; Flags: uninsdeletekey

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Shared Folder\GitHub\SDL\SDL\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Shared Folder\GitHub\SDL\Update\*"; DestDir: "{app}\Update"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Shared Folder\GitHub\SDL\Installer\Website Shortcuts\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files


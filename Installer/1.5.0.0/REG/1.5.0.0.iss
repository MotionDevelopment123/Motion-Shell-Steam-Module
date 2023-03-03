; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SDL"
#define MyAppVersion "1.5.0.0"
#define MyAppPublisher "Motion Development"
#define MyAppURL "https://sites.google.com/view/steam-deck-launcher/"
#define MyAppUpdate "https://github.com/MotionDevelopment123/SDL/releases/tag/Stable"
#define MyAppExeName "SDL Addons and tips for REG.url"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4447583C-F683-4F36-9B3B-F874120E8E47}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppUpdate}
DefaultDirName=C:\Program Files\{#MyAppName}
DisableProgramGroupPage=yes
InfoBeforeFile=C:\Shared Folder\GitHub\SDL\Installer\SETUP\(REG)SETUPINFO.rtf
InfoAfterFile=C:\Shared Folder\GitHub\SDL\Installer\SETUP\(REG)COMPLETE.rtf
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Shared Folder\GitHub\SDL\Installer\1.5.0.0\REG
OutputBaseFilename=SDL
SetupIconFile=C:\Shared Folder\GitHub\SDL\ICON\SDLnew.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows NT\CurrentVersion\Winlogon"; ValueType: string; ValueName: "shell"; ValueData: "C:\Program Files\SDL\SDL.exe"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Shared Folder\GitHub\SDL\SDL-main\REG\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\SDL\SDL-main\SDL\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Shared Folder\GitHub\SDL\SDL-main\REG\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Shared Folder\GitHub\SDL\SDL-main\SDSL\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent


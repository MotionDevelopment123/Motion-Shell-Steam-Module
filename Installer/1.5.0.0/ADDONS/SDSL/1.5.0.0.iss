; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Shortcut Launcher (ADDON)"
#define MyAppVersion "1.5.0.0"
#define MyAppPublisher "Motion Development"
#define MyAppURL "https://sites.google.com/view/steam-deck-launcher/"
#define MyAppUpdate "https://github.com/MotionDevelopment123/SDL/releases/tag/Stable"
#define MyAppExeName "About Shortcut Launcher.url"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B1726A97-4FAF-48A1-9C51-2D24E78BE29A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppUpdate}
DefaultDirName=C:\Program Files\SDL
DisableProgramGroupPage=yes
InfoAfterFile=C:\Shared Folder\GitHub\SDL\Installer\SETUP\(ADDON)SDSL.rtf
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Shared Folder\GitHub\SDL\Installer\1.5.0.0\ADDONS\SDSL
OutputBaseFilename=SDSL
SetupIconFile=C:\Shared Folder\GitHub\SDL\ICON\SDLnew.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Shared Folder\GitHub\SDL\SDL-main\SDSL\SDSL\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\SDL\SDL-main\SDSL\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent


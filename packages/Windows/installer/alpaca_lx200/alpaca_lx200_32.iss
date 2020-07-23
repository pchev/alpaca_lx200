; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
 
[Setup]
ArchitecturesInstallIn64BitMode=x64
AppName=Alpaca_LX200
AppVerName=Alpaca_LX200 V1
AppPublisherURL=https://github.com/pchev/alpaca_lx200
AppSupportURL=https://github.com/pchev/alpaca_lx200
AppUpdatesURL=https://github.com/pchev/alpaca_lx200
DefaultDirName={pf32}\Alpaca_LX200
UsePreviousAppDir=false
DefaultGroupName=Alpaca_LX200
AllowNoIcons=true
InfoBeforeFile=Presetup\readme.txt
OutputDir=.\
OutputBaseFilename=alpaca_lx200-windows-x32
Compression=lzma
SolidCompression=true
Uninstallable=true
UninstallLogMode=append
DirExistsWarning=no
ShowLanguageDialog=yes
AppID={{590582c2-4ec7-44e2-8ef3-9014c1f1f62b}

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}

[Files]
Source: Data\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs restartreplace
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\Alpaca_LX200; Filename: {app}\alpaca_lx200.exe; WorkingDir: {app}
Name: {userdesktop}\Alpaca_LX200; Filename: {app}\alpaca_lx200.exe; WorkingDir: {app}; Tasks: desktopicon


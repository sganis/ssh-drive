; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Gold Drive"
#define MyAppVersion "0.1"
#define MyAppPublisher "SAG"
#define MyAppURL "http://github.com/sganis/golddrive"
#define MyAppExeName "golddrive.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{09847464-EA20-4D2B-83A3-2C1FB7DD6F34}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={localappdata}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=golddrive-{#MyAppVersion}-x64
SetupIconFile=golddrive\app\ui\assets\golddrive4.ico
UninstallDisplayIcon={app}\{#MyAppExeName}
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
OutputDir=release
DisableDirPage=yes
AlwaysShowDirOnReadyPage=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

;[Tasks]
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; 

[CustomMessages]
english.InstallingLabel=Installing

[Code]
procedure InitializeWizard;
begin
  with TNewStaticText.Create(WizardForm) do
  begin
    Parent := WizardForm.FilenameLabel.Parent;
    Left := WizardForm.FilenameLabel.Left;
    Top := WizardForm.FilenameLabel.Top;
    Width := WizardForm.FilenameLabel.Width;
    Height := WizardForm.FilenameLabel.Height;
    Caption := ExpandConstant('{cm:InstallingLabel}');
  end;
  WizardForm.FilenameLabel.Visible := False;
end;

[Files]
Source: "golddrive\golddrive.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "golddrive\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
;Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
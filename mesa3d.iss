; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Mesa3D software rendering drivers for Windows"
#define MyAppVersion "17.3.7.600-1"
#define MyAppPublisher "Pal100x"
#define MyAppURL "https://github.com/pal1000/mesa-dist-win"
#define MyAppExeName "mesa-{#MyAppVersion}-setup.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8EFCCC7F-5BAF-4651-A040-EFB13C59EF60}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=LICENSE
OutputDir=bin\
OutputBaseFilename=mesa-{#MyAppVersion}-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "bin\x86\opengl32.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x86\osmesa-gallium.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x86\osmesa-swrast.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x86\graw.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x64\opengl32.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\swrAVX.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\swrAVX2.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\osmesa-gallium.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\osmesa-swrast.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\graw.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\quickdeploy.cmd"; DestDir: "{app}"
Source: "bin\readme.txt"; DestDir: "{app}"

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[UninstallDelete]
Type: files; Name: "{app}\x86\opengl32.dll"
Type: files; Name: "{app}\x86\graw.dll";
Type: files; Name: "{app}\x86\osmesa-gallium.dll"
Type: files; Name: "{app}\x86\osmesa-swrast.dll"
Type: files; Name: "{app}\x64\opengl32.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\swrAVX.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\swrAVX2.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\osmesa-gallium.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\osmesa-swrast.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\graw.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\quickdeploy.cmd"
Type: files; Name: "{app}\readme.txt"

[Icons]
Name: "{commondesktop}\Mesa3D quick deployment utility"; Filename: "{app}\quickdeploy.cmd"

[Run]
Filename: "{app}\readme.txt"; Description: "View the README file"; Flags: postinstall shellexec skipifsilent
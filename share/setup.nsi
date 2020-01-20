<<<<<<< HEAD
Name "Mire Core (-bit)"
=======
Name "Mire Core (32-bit)"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed

RequestExecutionLevel highest
SetCompressor /SOLID lzma

# General Symbol Definitions
!define REGKEY "SOFTWARE\$(^Name)"
<<<<<<< HEAD
!define VERSION 1.0.4
=======
!define VERSION 1.0.1
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
!define COMPANY "Mire Core project"
!define URL https://www.mire.org

# MUI Symbol Definitions
<<<<<<< HEAD
!define MUI_ICON "/root/Mirenet2/share/pixmaps/bitcoin.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "/root/Mirenet2/share/pixmaps/nsis-wizard.bmp"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_RIGHT
!define MUI_HEADERIMAGE_BITMAP "/root/Mirenet2/share/pixmaps/nsis-header.bmp"
=======
!define MUI_ICON "/root/Mire/share/pixmaps/bitcoin.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "/root/Mire/share/pixmaps/nsis-wizard.bmp"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_RIGHT
!define MUI_HEADERIMAGE_BITMAP "/root/Mire/share/pixmaps/nsis-header.bmp"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
!define MUI_FINISHPAGE_NOAUTOCLOSE
!define MUI_STARTMENUPAGE_REGISTRY_ROOT HKLM
!define MUI_STARTMENUPAGE_REGISTRY_KEY ${REGKEY}
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME StartMenuGroup
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "Mire Core"
<<<<<<< HEAD
!define MUI_FINISHPAGE_RUN $INSTDIR\mire-qt
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "/root/Mirenet2/share/pixmaps/nsis-wizard.bmp"
=======
!define MUI_FINISHPAGE_RUN $INSTDIR\mire-qt.exe
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "/root/Mire/share/pixmaps/nsis-wizard.bmp"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
!define MUI_UNFINISHPAGE_NOAUTOCLOSE

# Included files
!include Sections.nsh
!include MUI2.nsh
<<<<<<< HEAD
!if "" == "64"
=======
!if "32" == "64"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
!include x64.nsh
!endif

# Variables
Var StartMenuGroup

# Installer pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_STARTMENU Application $StartMenuGroup
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

# Installer languages
!insertmacro MUI_LANGUAGE English

# Installer attributes
<<<<<<< HEAD
OutFile /root/Mirenet2/mire-${VERSION}-win-setup.exe
!if "" == "64"
=======
OutFile /root/Mire/mire-${VERSION}-win32-setup.exe
!if "32" == "64"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
InstallDir $PROGRAMFILES64\Mire
!else
InstallDir $PROGRAMFILES\Mire
!endif
CRCCheck on
XPStyle on
BrandingText " "
ShowInstDetails show
VIProductVersion ${VERSION}.0
VIAddVersionKey ProductName "Mire Core"
VIAddVersionKey ProductVersion "${VERSION}"
VIAddVersionKey CompanyName "${COMPANY}"
VIAddVersionKey CompanyWebsite "${URL}"
VIAddVersionKey FileVersion "${VERSION}"
VIAddVersionKey FileDescription ""
VIAddVersionKey LegalCopyright ""
InstallDirRegKey HKCU "${REGKEY}" Path
ShowUninstDetails show

# Installer sections
Section -Main SEC0000
    SetOutPath $INSTDIR
    SetOverwrite on
<<<<<<< HEAD
    File /root/Mirenet2/release/mire-qt
    File /oname=COPYING.txt /root/Mirenet2/COPYING
    File /oname=readme.txt /root/Mirenet2/doc/README_windows.txt
    SetOutPath $INSTDIR\daemon
    File /root/Mirenet2/release/mired
    File /root/Mirenet2/release/mire-cli
    SetOutPath $INSTDIR\doc
    File /r /root/Mirenet2/doc\*.*
=======
    File /root/Mire/release/mire-qt.exe
    File /oname=COPYING.txt /root/Mire/COPYING
    File /oname=readme.txt /root/Mire/doc/README_windows.txt
    SetOutPath $INSTDIR\daemon
    File /root/Mire/release/mired.exe
    File /root/Mire/release/mire-cli.exe
    SetOutPath $INSTDIR\doc
    File /r /root/Mire/doc\*.*
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
    SetOutPath $INSTDIR
    WriteRegStr HKCU "${REGKEY}\Components" Main 1
SectionEnd

Section -post SEC0001
    WriteRegStr HKCU "${REGKEY}" Path $INSTDIR
    SetOutPath $INSTDIR
    WriteUninstaller $INSTDIR\uninstall.exe
    !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
    CreateDirectory $SMPROGRAMS\$StartMenuGroup
<<<<<<< HEAD
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\$(^Name).lnk" $INSTDIR\mire-qt
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Mire Core (testnet, -bit).lnk" "$INSTDIR\mire-qt" "-testnet" "$INSTDIR\mire-qt" 1
=======
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\$(^Name).lnk" $INSTDIR\mire-qt.exe
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Mire Core (testnet, 32-bit).lnk" "$INSTDIR\mire-qt.exe" "-testnet" "$INSTDIR\mire-qt.exe" 1
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Uninstall $(^Name).lnk" $INSTDIR\uninstall.exe
    !insertmacro MUI_STARTMENU_WRITE_END
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayName "$(^Name)"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayVersion "${VERSION}"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" Publisher "${COMPANY}"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" URLInfoAbout "${URL}"
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayIcon $INSTDIR\uninstall.exe
    WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" UninstallString $INSTDIR\uninstall.exe
    WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoModify 1
    WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoRepair 1
    WriteRegStr HKCR "mire" "URL Protocol" ""
    WriteRegStr HKCR "mire" "" "URL:Mire"
<<<<<<< HEAD
    WriteRegStr HKCR "mire\DefaultIcon" "" $INSTDIR\mire-qt
    WriteRegStr HKCR "mire\shell\open\command" "" '"$INSTDIR\mire-qt" "%1"'
=======
    WriteRegStr HKCR "mire\DefaultIcon" "" $INSTDIR\mire-qt.exe
    WriteRegStr HKCR "mire\shell\open\command" "" '"$INSTDIR\mire-qt.exe" "%1"'
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
SectionEnd

# Macro for selecting uninstaller sections
!macro SELECT_UNSECTION SECTION_NAME UNSECTION_ID
    Push $R0
    ReadRegStr $R0 HKCU "${REGKEY}\Components" "${SECTION_NAME}"
    StrCmp $R0 1 0 next${UNSECTION_ID}
    !insertmacro SelectSection "${UNSECTION_ID}"
    GoTo done${UNSECTION_ID}
next${UNSECTION_ID}:
    !insertmacro UnselectSection "${UNSECTION_ID}"
done${UNSECTION_ID}:
    Pop $R0
!macroend

# Uninstaller sections
Section /o -un.Main UNSEC0000
<<<<<<< HEAD
    Delete /REBOOTOK $INSTDIR\mire-qt
=======
    Delete /REBOOTOK $INSTDIR\mire-qt.exe
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
    Delete /REBOOTOK $INSTDIR\COPYING.txt
    Delete /REBOOTOK $INSTDIR\readme.txt
    RMDir /r /REBOOTOK $INSTDIR\daemon
    RMDir /r /REBOOTOK $INSTDIR\doc
    DeleteRegValue HKCU "${REGKEY}\Components" Main
SectionEnd

Section -un.post UNSEC0001
    DeleteRegKey HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)"
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\Uninstall $(^Name).lnk"
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\$(^Name).lnk"
<<<<<<< HEAD
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\Mire Core (testnet, -bit).lnk"
=======
    Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\Mire Core (testnet, 32-bit).lnk"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
    Delete /REBOOTOK "$SMSTARTUP\Mire.lnk"
    Delete /REBOOTOK $INSTDIR\uninstall.exe
    Delete /REBOOTOK $INSTDIR\debug.log
    Delete /REBOOTOK $INSTDIR\db.log
    DeleteRegValue HKCU "${REGKEY}" StartMenuGroup
    DeleteRegValue HKCU "${REGKEY}" Path
    DeleteRegKey /IfEmpty HKCU "${REGKEY}\Components"
    DeleteRegKey /IfEmpty HKCU "${REGKEY}"
    DeleteRegKey HKCR "mire"
    RmDir /REBOOTOK $SMPROGRAMS\$StartMenuGroup
    RmDir /REBOOTOK $INSTDIR
    Push $R0
    StrCpy $R0 $StartMenuGroup 1
    StrCmp $R0 ">" no_smgroup
no_smgroup:
    Pop $R0
SectionEnd

# Installer functions
Function .onInit
    InitPluginsDir
<<<<<<< HEAD
!if "" == "64"
=======
!if "32" == "64"
>>>>>>> 75b41aeb61955f253387e9a656aa9d9d2ef6beed
    ${If} ${RunningX64}
      ; disable registry redirection (enable access to 64-bit portion of registry)
      SetRegView 64
    ${Else}
      MessageBox MB_OK|MB_ICONSTOP "Cannot install 64-bit version on a 32-bit system."
      Abort
    ${EndIf}
!endif
FunctionEnd

# Uninstaller functions
Function un.onInit
    ReadRegStr $INSTDIR HKCU "${REGKEY}" Path
    !insertmacro MUI_STARTMENU_GETFOLDER Application $StartMenuGroup
    !insertmacro SELECT_UNSECTION Main ${UNSEC0000}
FunctionEnd

@echo off
title Welcome to use Windmill Valley Server Deploy Tools
echo =====================================
echo        Login in Steam account
echo =====================================
::Get your tokens by using the first line commands in "CommondsLines.txt",type it in game's console.
for /f "tokens=2,*" %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (
set documents=%%j
)
set file=%documents%\Mount and Blade II Bannerlord\Tokens
md "%file%"
set /p Tokens=Tokens: 
>"%file%\DedicatedCustomServerAuthToken.txt" set /p="%Tokens%" <nul

set /p username=Account: 
set "psCommand=powershell -Command "$pword = read-host 'Password' -AsSecureString ; ^
      $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p


steamcmd.exe +force_install_dir ./mb2/ +login %username% %password% +app_update 1863440 +quit

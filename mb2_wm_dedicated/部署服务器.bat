@echo off
title 欢迎使用风车谷砍二服务器自动部署工具
echo =====================================
echo             登入steam账户
echo =====================================

for /f "tokens=2,*" %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (
set documents=%%j
)
set file=%documents%\Mount and Blade II Bannerlord\Tokens
md "%file%"
set /p Tokens=Tokens: 
>"%file%\DedicatedCustomServerAuthToken.txt" set /p="%Tokens%" <nul

set /p username=请输入账号: 
set "psCommand=powershell -Command "$pword = read-host '请输入密码' -AsSecureString ; ^
      $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p


steamcmd.exe +force_install_dir ./mb2/ +login %username% %password% +app_update 1863440 +quit
@echo off
::Here type in your config's name, it shouldn't includde ".txt"
set cfg=wm_sample
echo DedicatedCustomserver.starter.exe /dedicatedcustomserverconfigfile %cfg%.txt
title MB2 Windmill Valley Server Starter  Config：%cfg%
:restart
DedicatedCustomserver.starter.exe /dedicatedcustomserverconfigfile %cfg%.txt
echo Server closed by error, wait to restart: 3s
ping -n 2 -w 500 0.0.0.1>nul
echo Server closed by error, wait to restart: 2s
ping -n 2 -w 500 0.0.0.1>nul
echo Server closed by error, wait to restart: 1s
ping -n 2 -w 500 0.0.0.1>nul
goto restart

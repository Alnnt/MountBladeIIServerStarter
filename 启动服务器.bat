@echo off
set cfg=wm_sample
echo DedicatedCustomserver.starter.exe /dedicatedcustomserverconfigfile %cfg%.txt
title 骑砍二风车谷一键开服端 Q群93703718  配置：%cfg%
:restart
DedicatedCustomserver.starter.exe /dedicatedcustomserverconfigfile %cfg%.txt
echo 服务器异常崩溃，重启倒计时: 3s
ping -n 2 -w 500 0.0.0.1>nul
echo 服务器异常崩溃，重启倒计时: 2s
ping -n 2 -w 500 0.0.0.1>nul
echo 服务器异常崩溃，重启倒计时: 1s
ping -n 2 -w 500 0.0.0.1>nul
goto restart
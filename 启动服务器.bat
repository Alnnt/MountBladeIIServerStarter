@echo off
set cfg=wm_sample
echo DedicatedCustomserver.starter.exe /dedicatedcustomserverconfigfile %cfg%.txt
title �￳���糵��һ�������� QȺ93703718  ���ã�%cfg%
:restart
DedicatedCustomserver.starter.exe /dedicatedcustomserverconfigfile %cfg%.txt
echo �������쳣��������������ʱ: 3s
ping -n 2 -w 500 0.0.0.1>nul
echo �������쳣��������������ʱ: 2s
ping -n 2 -w 500 0.0.0.1>nul
echo �������쳣��������������ʱ: 1s
ping -n 2 -w 500 0.0.0.1>nul
goto restart
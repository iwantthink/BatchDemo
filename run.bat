@echo off

set num=0
set str=3.5
set str1=1.0

ECHO ---开始测试时间：%time%---

:begin

ECHO ---开启被测试app---
START adb shell am start -n hmtdemo.hmt.com.hmtdemo/hmtdemo.hmt.com.hmtdemo.hmt.MainActivity

ECHO ---等待 %str% 秒 延时前：%time%---
WScript sleep.vbs
ECHO ---延时后：%time%---

rem ECHO ---模拟HOME键---
rem START adb shell input keyevent 3

rem ECHO ---等待%str1%秒 延时前：%time%---
rem WScript sleep2.vbs
rem ECHO ---延时后：%time%---

rem ECHO ---重新进入被测试app---
rem START adb shell am start -n hmtdemo.hmt.com.hmtdemo/hmtdemo.hmt.com.hmtdemo.hmt.MainActivity

rem ECHO ---等待%str1%秒 延时前：%time%---
rem WScript sleep2.vbs
rem ECHO ---延时后：%time%---

ECHO ---模拟杀死app---
START adb shell am force-stop hmtdemo.hmt.com.hmtdemo

ECHO ---等待%str1%秒 延时前：%time%---
WScript sleep2.vbs
ECHO ---延时后：%time%---

set /a num+=1
ECHO ---已经循环了%num%次---
ECHO ---结束测试时间：%time%---
ECHO ---
ECHO ---

if "%num%"=="20" (ECHO.循环结束了&&PAUSE) else goto begin




@echo off

set num=0
set str=3.5
set str1=1.0

ECHO ---��ʼ����ʱ�䣺%time%---

:begin

ECHO ---����������app---
START adb shell am start -n hmtdemo.hmt.com.hmtdemo/hmtdemo.hmt.com.hmtdemo.hmt.MainActivity

ECHO ---�ȴ� %str% �� ��ʱǰ��%time%---
WScript sleep.vbs
ECHO ---��ʱ��%time%---

rem ECHO ---ģ��HOME��---
rem START adb shell input keyevent 3

rem ECHO ---�ȴ�%str1%�� ��ʱǰ��%time%---
rem WScript sleep2.vbs
rem ECHO ---��ʱ��%time%---

rem ECHO ---���½��뱻����app---
rem START adb shell am start -n hmtdemo.hmt.com.hmtdemo/hmtdemo.hmt.com.hmtdemo.hmt.MainActivity

rem ECHO ---�ȴ�%str1%�� ��ʱǰ��%time%---
rem WScript sleep2.vbs
rem ECHO ---��ʱ��%time%---

ECHO ---ģ��ɱ��app---
START adb shell am force-stop hmtdemo.hmt.com.hmtdemo

ECHO ---�ȴ�%str1%�� ��ʱǰ��%time%---
WScript sleep2.vbs
ECHO ---��ʱ��%time%---

set /a num+=1
ECHO ---�Ѿ�ѭ����%num%��---
ECHO ---��������ʱ�䣺%time%---
ECHO ---
ECHO ---

if "%num%"=="20" (ECHO.ѭ��������&&PAUSE) else goto begin




@echo off

set num=0
set str=10
set str1=3
:begin

ECHO ---����������app---
START adb shell am start -n hmtdemo.hmt.com.hmtdemo/hmtdemo.hmt.com.hmtdemo.hmt.MainActivity

ECHO ---�ȴ� %str% �� ��ʱǰ��%time%---
WScript sleep.vbs
ECHO ---��ʱ��%time%---

ECHO ---ģ��HOME��---
START adb shell input keyevent 3

ECHO ---�ȴ�%str1%�� ��ʱǰ��%time%---
WScript sleep2.vbs
ECHO ---��ʱ��%time%---

ECHO ---���½��뱻����app---
START adb shell am start -n hmtdemo.hmt.com.hmtdemo/hmtdemo.hmt.com.hmtdemo.hmt.MainActivity

ECHO ---�ȴ�%str1%�� ��ʱǰ��%time%---
WScript sleep2.vbs
ECHO ---��ʱ��%time%---

ECHO ---ģ��ɱ��app---
START adb shell am force-stop hmtdemo.hmt.com.hmtdemo

ECHO ---�ȴ�%str1%�� ��ʱǰ��%time%---
WScript sleep2.vbs
ECHO ---��ʱ��%time%---

set /a num+=1
ECHO ---�Ѿ�ѭ����%num%��---
ECHO ---
ECHO ---

if "%num%"=="200" (ECHO.ѭ��������&&PAUSE) else goto begin




@echo off 
ECHO "input execute times default:10000"
SET executeTimes=10000
SET /p executeTimes= 
ECHO "input gap time default:2"
SET gapTime=2
SET /p gapTime=

ECHO "gapTime = %gapTime%"
ECHO "executeTimes = %executeTimes%"

PAUSE

for /l %%x in (1, 1, %executeTimes%) do (
	ECHO "cur times  = %%x"
	START adb shell am start -n hmtdemo.hmt.com.hmtdemo/hmtdemo.hmt.com.hmtdemo.hmt.MainActivity
	TIMEOUT %gapTime%
	START adb shell am force-stop hmtdemo.hmt.com.hmtdemo
        TIMEOUT 1
)

PAUSE
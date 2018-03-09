@echo off
ECHO "input mode type(1,2,3),default:1"
SET mode=1
SET /p mode=
ECHO "input Residence time /unit(seconed) default:5s"
SET time=5
SET /p time= 
ECHO "input frequency default:10000"
SET fre=10000
SET /p fre=

ECHO "input the test device name"
SET /p testname=



SET cur = 1
ECHO "mode = %mode%"
ECHO "time = %time%"
ECHO "fre = %fre%"
ECHO "test device = %testname%"
PAUSE

IF %mode% EQU 1 (
	for /l %%x in (1, 1, %fre%) do (
		echo " cur time = %%x"
		IF NOT DEFINED testname (START adb shell am start -n com.ryan.testmonitordemo.mode1/com.ryan.testmonitordemo.MainActivity
		)ELSE ( 		
			START adb -s %testname% shell am start -n com.ryan.testmonitordemo.mode1/com.ryan.testmonitordemo.MainActivity
		)
		REM choice /t %time% /d y /n >nul   
		TIMEOUT %time%
		IF NOT DEFINED testname (START adb shell am force-stop com.ryan.testmonitordemo.mode1
		)ELSE ( 		
			START adb -s %testname% shell am force-stop com.ryan.testmonitordemo.mode1
		)
		REM choice /t 1 /d y /n >nul   
		TIMEOUT 1
	)
 ) 

IF %mode% EQU 2 (
		for /l %%x in (1, 1, %fre%) do (
		echo " cur time = %%x"
		IF NOT DEFINED testname (START adb shell am start -n com.ryan.testmonitordemo.mode2/com.ryan.testmonitordemo.MainActivity
		)ELSE ( 		
			START adb -s %testname% shell am start -n com.ryan.testmonitordemo.mode2/com.ryan.testmonitordemo.MainActivity
		)
		
		REM choice /t %time% /d y /n >nul   
		TIMEOUT %time%
		IF NOT DEFINED testname (START adb shell am force-stop com.ryan.testmonitordemo.mode2
		)ELSE ( 		
			START adb -s %testname% shell am force-stop com.ryan.testmonitordemo.mode2
		)
		REM choice /t 1 /d y /n >nul  
		TIMEOUT 1 
	)
)

IF %mode% EQU 3 (
	for /l %%x in (1, 1, %fre%) do (
		echo " cur time = %%x"
		IF NOT DEFINED testname (START adb shell am start -n com.ryan.testmonitordemo.mode2/com.ryan.testmonitordemo.MainActivity
		)ELSE ( 		
			START adb -s %testname% shell am start -n com.ryan.testmonitordemo.mode2/com.ryan.testmonitordemo.MainActivity
		)
		REM choice /t 1 /d y /n >nul   
		TIMEOUT 1
		IF NOT DEFINED testname (START adb shell am startservice -n com.ryan.testmonitordemo.mode2/com.ryan.testmonitordemo.MyService

		)ELSE ( 		
			START adb -s %testname% shell am startservice -n com.ryan.testmonitordemo.mode2/com.ryan.testmonitordemo.MyService
		)
		REM choice /t %time% /d y /n >nul   
		TIMEOUT %time% 
		IF NOT DEFINED testname (START adb shell am force-stop com.ryan.testmonitordemo.mode2
		)ELSE ( 		
			START adb -s %testname% shell am force-stop com.ryan.testmonitordemo.mode2
		)
		REM choice /t 1 /d y /n >nul  
		TIMEOUT 1  
	)
)

pause
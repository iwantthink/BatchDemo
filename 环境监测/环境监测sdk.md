DEMO\_A ：宿主app，布置了环境监测sdk
SERVICE: 环境监测sdk的后台服务

**情景：**

1. DEMO\_A 启动，SERVICE不启动
2. DEMO\_A 启动，SERVICE启动
3. DEMO\_A 启动，SERVICE不启动， 由三方唤醒SERVICE

**命令：**
唤醒服务：
>adb shell am startservice -n com.ryan.testmonitordemo/com.ryan.testmonitordemo.MyService

启动活动：

>adb shell am start -S -n com.ryan.testmonitordemo/com.ryan.testmonitordemo.MainActivity


终止进程：
>adb shell am force-stop com.ryan.testmonitordemo

apk1:不开启服务（.mode1）
apk2:开启服务(.mode2)

1. 选择情景 mode1,mode2,mode3
2. 输入停留时间
3. 输入执行次数
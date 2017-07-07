#Android测试Demo使用说明
---

##测试工具
[请下载腾讯GT测试工具    http://gt.qq.com](http://gt.qq.com/ "请下载腾讯GT测试工具")


## 1.测试方式1
###1.1 注意事项：
1. 手机需root处理  
2. 电脑需安装adb 工具
3. 默认使用启动时发送模式，可以通过修改配置文件更改发送模式
4. app首次安装完毕，需启动一次 将所需权限提示确认
5. 目前这种测试方式只支持HMTSDK
6. 网络环境请自行设置
###1.2 工具：
mobile：batch_control.apk  
pc    ：click_me.bat

###1.3 使用流程：
1. 将batch_control.apk 安装至手机
2. 在电脑端运行click_me.bat
3. 在cmd 中按提示输入需要测试的次数
4. 等待运行结束

###1.4 测试内容：
- 模拟打开app  
- 模拟切换页面 发送activity
- 发送action,error 
- 模拟杀死app

##2.测试方式2
### 2.1 注意事项：
1. 因个别SDK对初始化方式有要求，所以在更改了测试SDK模式之后，需重启启动app
2. GrowingIO 不支持action和error的发送
3. Zhuge 不支持error的发送
4. 改变发送模式 按钮只对HMT HVT 起作用
5. 由于页面切换过快，在测试过程中，屏幕可能会有一段时间处于白屏状态
6. 测试DEMO的一些针对测试的优化，在部分机型上可能会出现 后台多个 task，是正常情况，建议在清除后台时一起清除。
### 2.2 工具：  
mobile:manual\_control\_version.apk

### 2.3 使用流程：
1. 将manual\_control\_version.apk 安装至apk
2. 在提示“输入要测试的次数”的输入框中输入 需要测试的次数，不填写次数默认为100次
3. 在提示“SDK:0 <0-HMT,1-UM,2-TD,3-GI,4-ZG>”的输入框中输入 需要测试的sdk ，需完全重启app，默认为HMT（HMT->hmt_sdk  UM->Umeng_sdk TD->talkingData_sdk GI->GrowingIo_sdk ZG->zhuge_sdk ）
4. 点击测试HMT 即可开始测试

### 2.4 测试内容：  
- 测试一次代表 切换 A页面-> B页面 -> A页面，error和acton 请求各一个，activity 请求为2个。（测试完毕之后，关闭app 可能会导致1-2个activity增加 是正常的 ）
- 例：测试次数100次，activity数据200条（根据结束app的方式，可能会增加1/2条），action数据100条，error数据100条



## 3.数据指标说明
- CPU  
CPU:CPU使用率，分为峰值与均值，单位为%，取自GT监测结果中CPU.csv。
- MEM  
MEM:内存，分为峰值与均值，单位为MB，取自GT监测结果中MEM.csv。
- PNET  
PNET:被监测应用所发送、接收的流量，分为transmitted与received，单位为KB，取自GT监测结果中Pnet_demo名称.csv、。
- Power  
Power:电量，分为初始电量、结束电量与损耗电量，单位为%，取自GT监测结果中Power.csv。
- TEMP  
TEMP:温度，分为初始温度、结束温度以及上升温度，单位为摄氏度，取自GT监测结果中Temperature.csv。
- 奔溃率  
取自管理平台-错误趋势报表，错误发生次数/循环次数（除去循环中触发的error请求）。
- 奔溃率划分：
Android：0~2%（优秀）、2%~4%（标准）、4%~12%（轻微隐患）、12%以上（严重隐患）

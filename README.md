#Android测试Demo使用说明
---
## 测试方式1
### 注意事项：
1. 手机需root处理  
2. 电脑需安装adb 工具
3. 默认使用启动时发送模式，可以通过修改配置文件更改发送模式
4. app首次安装完毕，需启动一次 将所需权限提示确认
5. 目前这种测试方式只支持HMTSDK
### 工具：
mobile：batch_control.apk  
pc    ：click_me.bat

### 流程：
1. 将batch_control.apk 安装至手机
2. 在电脑端运行click_me.bat
3. 在cmd 中按提示输入需要测试的次数
4. 等待运行结束

### 测试内容：
- 模拟打开app  
- 模拟切换页面
- 发送action,error 
- 模拟杀死app

## 测试方式2
### 注意事项：
1. 因个别SDK对初始化方式有要求，所以在更改了测试SDK模式之后，需重启启动app
2. GrowingIO 不支持action和error的发送
3. Zhuge 不支持error的发送
4. 改变发送模式 按钮只对HMT HVT 起作用
### 工具：  
mobile:manual\_control\_version.apk

### 流程：
1. 将manual\_control\_version.apk 安装至apk
2. 在提示“输入要测试的次数”的输入框中输入 需要测试的次数，不填写次数默认为100次
3. 在提示“SDK:0 <0-HMT,1-UM,2-TD,3-GI,4-ZG>”的输入框中输入 需要测试的sdk ，需完全重启app（HMT->hmt_sdk  UM->Umeng_sdk TD->talkingData_sdk GI->GrowingIo_sdk ZG->zhuge_sdk ）
4. 点击测试HMT 即可开始测试

### 测试内容：  
- 测试一次代表 切换 A页面-> B页面 -> A页面，error和acton 请求各一个，activity 请求为2个。（测试完毕之后，关闭app 可能会导致1-2个activity增加 是正常的 ）

@echo.服务启动......  
@echo off  
@sc create test3 binPath= "notepad"  
@net start test3  
@sc config test3 start= AUTO  
@echo off  
@echo.启动完毕！  
@pause  

rem 配置服务
rem 有以下集中方式：
rem sc config 服务名 start=AUTO    (自动)
rem sc config 服务名 start= DEMAND  (手动)
rem sc config 服务名 start= DISABLED(禁用)
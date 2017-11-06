@echo off
goto text
:: --- &
	:: 删a.txt不论是否成功，继续删b.txt
	:: del a.txt & del b.txt 
	::表示两条命令或语句同时执行的意思。
	::如 echo a&echo b，将在屏幕上同时显示a和b字符。
	::当几条语句含义近似或作用相同且没有先后的顺序之别时，
	::启用&符号连接这些语句将会增加程序的可读性
:: --- && ||
	:: a.txt 被成功删掉了，才执行删b.txt ,否则不执行删b.txt 
	:: del a.txt && del b.txt 
	:: 与&&相反，a.txt 删除失败，则执行后面的删除b.txt ,否则不执行删b
	:: del a.txt || del b.txt 
	::在某些场合，它们能替代 if……else…… 语句
:: --- |
	:: help | more 把左边命令的输入当作右边命令的输入
	:: 相当于 
	::help > ss.txt   %输出ss%
	::more ss.txt		%输入ss%
:: --- @
	::放在行首，隐藏当前行命令输出。
	:: @echo off 相当于每行前面都加了@
:: --- < > >>
	:: > 重定向输出，指定一个希输出的方式
	:: help > a.txt 把输出内容，同时输出到a.txt ，如果已经有 a.txt ,会删掉重新创建
	:: >> 重定向追加输出 ，指向一个已存在的文件，把输出内容追加到文件尾
	:: < 从文件输入 
:: --- >&、<&
	:: >&，将一个句柄的输出写入到另一个句柄的输入中。 
	:: <&，刚好和>&相反，从一个句柄读取输入并将其写入到另一个句柄输出中。
:: --- ^ 
	:: 转义符,输出特殊字符时用
	:: echo ^>、echo ^|、echo ^|^|、echo ^^……
	
	:: 换行连接符
	REM for /l %%i ^
	REM in (1 1 5) ^
	REM do ^
	REM echo %%i
:: --- 	$ 
	::在findstr命令里面表示一行的结束。 
	
:text


pause
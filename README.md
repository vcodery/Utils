# Utils

## 1 sbin

### 1.1  readPass

从终端读取密码，每读取一个字符回显一个 ‘*’。读取到 ‘Backspace’ 时删除一个字符， 读取到 ‘Enter’ 时结束。

```shell
[vcodery@ubuntu:sbin]$ cat ./example.sh 
#!/bin/bash
######################################################
#### Example:
######################################################
read_pass "Please enter your pass: " your_pass
echo "Your pass is: " $your_pass

[vcodery@ubuntu:sbin]$ bash ./readPass.sh 
Please enter your pass:********
Your pass is:  qwer1234
[vcodery@ubuntu:sbin]$
```

### 1.2 delay

执行指定命令，并统计该指令执行耗时。

```shell
[vcodery@ubuntu:sbin]$ ./delay.sh sleep 1s
======================[ starting execute at 2019-07-04 09:19:11 ]======================
execute cmd : sleep 1s
======================[ finished execute at 2019-07-04 09:19:12 ]======================
本次运行时间： 1s
[vcodery@ubuntu:sbin]$ 
```









#!/bin/bash

###########################################################
### FUNC   : Statistical command execution delay
### USAGE  : delay.sh your_command
### Example: delay.sh sleep 1s
### BY     : vcodery
### DATE   : 2019/06/01
###########################################################

# mark start time
starttime=`date +'%Y-%m-%d %H:%M:%S'`
echo "======================[ starting execute at $starttime ]======================"

# your command
cmd=$@
echo "execute cmd : $cmd"
$cmd

# mark end time
endtime=`date +'%Y-%m-%d %H:%M:%S'`
echo "======================[ finished execute at $endtime ]======================"

# count
start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo "本次运行时间： "$((end_seconds-start_seconds))"s"

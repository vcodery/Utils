#!/bin/bash

###########################################################
### FUNC   : read the pass word from terminal.
### USAGE  : read_pass tips Variable
### ARG_1  : Tips message echo before read.
### ARG_2  : The Variable to keep pass.
### Example: read_pass "Please enter your pass: " your_pass
### BY     : vcodery
### DATE   : 2019/07/04
###########################################################

read_pass()
{
	echo -n $1
	pass=""
	count=0
	tput sc  # save cursor position
	while (true)
	do
		stty -echo    # disable echo 
		read -n 1 ch  # read one char
		stty echo     # enable echo 

		value=`printf "%d" "'$ch"`
		if [ "$value" == "127" ]; then  # process backspace
			if (($count<=0))  # current len is 0, do nothing
			then
				continue
			fi

			((count=$count-1))  # update length
			pass=${pass:0:$count}    # remove the last char
			tput rc  # mv cursor to saved position
			tput sc  # save cursor position again
			tput ed  # clear all chars from current position to end
			for ((i=0;$i<$count;i=$i+1))  # reprint cover chars left
			do
				echo -n "*"
			done
		elif [ "$ch" == "" ]; then  # end while read ENTER
			echo ""  # new line
			break    # end...
		else
			echo -n "*"
			((count=$count+1))  # update length
			pass=$pass$ch       # append to pass
		fi
	done
	eval $2=$pass
}

######################################################
#### Example:
######################################################
read_pass "Please enter your pass: " your_pass
echo "Your pass is: " $your_pass


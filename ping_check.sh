#!/bin/bash
#ping : Check list of servers are pingable
#~Sid

# Read the file line by line
#nodelist is the file name having list of hostname
cat  nodelist | while read line
do
        # check if there are no blank lines
        if [ ! -z $line ]; then
                PINGCOUNT=2
                PING=$(ping -c $PINGCOUNT $line | grep received | cut -d ',' -f2 | cut -d ' ' -f2)
                if [ $PING -eq 0 ]; then
                        echo "Critical: Hostname not pingable: $line"
                        # Or do send out mail
                else
                        echo "Ok : All good: $line"
                fi
        fi
done


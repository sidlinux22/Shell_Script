#! /bin/bash

#cleanup script
#~sid

LOG_DIR=/var/log
ROOT_UID=0
ERROR_NOTROOT=66
LINES=40
ERROR_WRGARG=83
ERROR_PWD=81
#Run as the root user
if [ "$UID" -ne "$ROOT_UID" ]
then 
  echo "Permission deny! Must be root user to run this script"
  exit $ERROR_NOTROOT
fi

#Test command-line argument is present(non-empty)

case "$1" in
""    ) lines=50;;
*[!0-9]*) echo "Usage: `basename $0` lines to cleanup";
 exit $ERROR_WRGARG;;
*       ) lines=$1;;
esac

#Change the directory
cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
then
echo "Error cannot change directory"
exit $ERROR_PWD
fi

#
#cd $LOG_DIR || (echo "cannot change DIR" >&2
#exit $ERROR_PWD)
#
#

#Save last section log files
tail -n $lines message > msg.tmp
mv msg.tmp message
echo "Log files clean-up"
exit 0


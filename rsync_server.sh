#! /bin/bash

#rsync : Synchronizes files and directories from one location to another
#~Sid
echo -n  "Enter SOURCEPATH : "
read SOURCEPATH
#SOURCEPATH='/home/sisharma/rsyntmp/*'
echo -n "Enter DESTPATH : "
read DESTPATH
#DESTPATH='/home/sisharma/tmpfile/'
echo -n "Enter DESTHOST : "
read DESTHOST
#DESTHOST='x.x.x.x'
echo -n  "Enter DESTUSER : "
read DESTUSER

#DESTUSER='sisharma'
LOGFILE='rync.log'
echo $'\n\n' >> $LOGFILE
 rsync -v -e ssh $SOURCEPATH $DESTUSER@$DESTHOST:$DESTPATH
echo "Completed at: `/bin/date`" >> $LOGFILE

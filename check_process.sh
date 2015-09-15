#!/bin/bash
#Script to check process status
#
script_name=`basename $0`
function usage () {
   cat <<EOF
Usage: $script_name  [-s service name] [-x Flag true/false] [-p Pattern]
EOF
   exit 0
}

while getopts :p:x:s:h opt
 do
   case $opt in
   s)  service_name=$OPTARG;;
   x)  use_script_status=$OPTARG;;
   p)  pattern_check=$OPTARG;;
   h)  usage ;;
  \?)  usage ;;
   esac
done
shift $(( $OPTIND - 1 ))
ec=1
if [[ "$use_script_status" == "true" ]]; then
  out=`/etc/init.d/$service_name status 2>&1`
  ec=$?
elif [[ -z "$pattern_check" ]] ; then
   usage
else
  out=`ps auxwww| grep -v grep | grep -v $script_name | egrep $pattern_check 2>&1`
  ec=$?
fi

if [ $ec != 0 ]; then
  echo "Service is DOWN"
else
  echo "Service is UP"
fi
exit $?

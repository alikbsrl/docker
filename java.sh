#!/bin/sh

# log file format
logf=$(hostname)-$(date +%Y-%m-%dT-%H-%M-%S).dump
# log folder
logdir="/dumps/"
# log folder max size
maxdirsize=19588

start()
{ # this function is starting java app
/usr/bin/java -server -Xms64M -Xmx64M -Dspring.profiles.active=default -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$logdir$logf -XX:OnOutOfMemoryError="java.sh logr" -cp /SimulateOutOfMemoryError.jar test.oom.SimulateOutOfMemoryError
}

logr()
{ # this function is rotating java heap dump log files
dirsize=`du -s $logdir | tr -s '\t' ' ' | cut -d' ' -f1`
while [ $dirsize -gt $maxdirsize ] ; do
        cd $logdir
        ls -A1t | tail -1 | xargs rm -f
        dirsize=`du -s $logdir | tr -s '\t' ' ' | cut -d' ' -f1`
done
}

usage()
{ # this function is printing script usage information
echo "Script usage:
        java.sh [OPTIONS]
                start
                logr
"
}

case $1 in
        start)
        start
        ;;
        logr)
        logr
        ;;
        *)
        usage
        ;;
esac


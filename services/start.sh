#!/bin/sh

if [ ".$AGT_HOME" = '.' ]
then
    echo 'No AGT_HOME defined'
    exit -1;
fi

cd "$AGT_HOME"

CLASSPATH=
for file in lib/*.jar
do
    CLASSPATH="$CLASSPATH:$AGT_HOME$file"
done

export CLASSPATH

exec java net.sf.aguacate.scheduler.AguacateSchedulerMain

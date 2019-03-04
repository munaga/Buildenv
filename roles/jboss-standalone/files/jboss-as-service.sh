#!/bin/sh
export JBOSS_HOME=/opt/wildfly_jboss/wildfly-15.0.1.Final
export JAVA_HOME=/opt/wildfly_jboss/jdk1.8.0_202
case "$1" in
    start)
      `/opt/wildfly_jboss/wildfly-15.0.1.Final/bin/standalone.sh -b 0.0.0.0` &
    ;;
    stop)
        killall java 2> /dev/null &
    ;;
    restart)
        killall java 2> /dev/null &
        # give stuff some time to stop before we restart
        sleep 10
        # protect against any services that can't stop before we restart
        `/opt/wildfly_jboss/wildfly-15.0.1.Final/bin/standalone.sh -b 0.0.0.0` &

    ;;
    *)
        echo "Usage: jboss {start|stop|restart}"
        exit 1
    ;;
esac

exit 0


== README

create the war file:

jruby -S rake assets:precompile
jruby -S warble war


install a wildfly 10.1 / statup parameters

JBOSS_HOME="{path}/wildfly"

JBOSS_LOG_FILE="${JBOSS_HOME}/standalone/log/jboss_startup.log"

SHORT_DATE=$(date +"%Y%m%d%H%M")
export RAILS_ENV=development
export JAVA="{path}/jdk/bin/java"
export JAVA_OPTS="-server -Xms512m -Xmx3g -d64  -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=1g -Djava.net.preferIPv4Stack=true -Djboss.modules.system.pkgs=org.jboss.byteman -Djava.awt.headless=true"
STARTUP_PARAMS="-b=0.0.0.0 -bmanagement=0.0.0.0 --server-config=standalone.xml"
$JBOSS_HOME/bin/standalone.sh


to Reproduce the error: Unable to re-deploy rails app (java.lang.RuntimeException: BUG: could not initialize constructor handle) #4442

Deploy the app and replace or remove the app  and deploy again





# wardemo

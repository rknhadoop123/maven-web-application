FROM jboss/wildfly
COPY target/maven-web-application.war /opt/jboss/wildfly/standalone/deployments

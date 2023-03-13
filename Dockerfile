FROM openjdk:8-jdk-alpine
VOLUME /tmp
#ARG JAVA_OPTS
#ENV JAVA_OPTS=$JAVA_OPTS
COPY target/k8sAssignment-0.0.1-SNAPSHOT.jar k8sassignment.jar
EXPOSE 8090
#ENTRYPOINT exec java $JAVA_OPTS -jar k8sassignment.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar k8sassignment.jar

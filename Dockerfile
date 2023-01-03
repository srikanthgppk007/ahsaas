FROM ubuntu:latest

MAINTAINER srikanthgppk007@gmail.com

RUN apt-get update -y

RUN apt-get install openjdk-8-jre -y

RUN echo "JAVA_HOME=/usr/" >> ~/.bashrc

ADD  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz  /tmp

RUN cd /tmp && tar -xvzf apache-tomcat-9.0.70.tar.gz 

RUN cd /tmp && mv apache-tomcat-9.0.70 /opt/

EXPOSE 8080

ADD https://get.jenkins.io/war-stable/2.375.1/jenkins.war /opt/apache-tomcat-9.0.70/webapps/

CMD ["/opt/apache-tomcat-9.0.70/bin/catalina.sh","run"]




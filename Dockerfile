FROM ubuntu:latest

MAINTAINER srikanthgppk007@gmail.com

RUN apt-get update -y

RUN apt-get install openjdk-8-jre -y

RUN echo "JAVA_HOME=/usr/" >> ~/.bashrc

ADD  http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz  /tmp

RUN cd /tmp && tar -xvzf apache-tomcat-8.5.37.tar.gz 

RUN cd /tmp && mv apache-tomcat-8.5.37 /opt/

EXPOSE 8080

ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war /opt/apache-tomcat-8.5.37/webapps/

CMD ["/opt/apache-tomcat-8.5.37/bin/catalina.sh","run"]




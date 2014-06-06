FROM    centos

# install openjdk
RUN  yum -y update

RUN yum -y install java-1.7.0-openjdk-devel

# install tomcat6
RUN wget http://apache.mesi.com.ar/tomcat/tomcat-7/v7.0.54/bin/apache-tomcat-7.0.54.tar.gz 
RUN mv apache-tomcat-7.0.54.tar.gz /opt/
RUN tar -xvzf /opt/apache-tomcat-7.0.54.tar.gz

EXPOSE 8080

ENTRYPOINT /opt/apache-tomcat-7.0.54/bin/startup.sh && tail -f /opt/apache-tomcat-7.0.54/logs/catalina.out

FROM    centos

# install openjdk
RUN  yum -y update

RUN yum -y install java-1.7.0-openjdk-devel

# install tomcat6

RUN yum -y install wget
RUN wget -O /opt/apache-tomcat-7.0.47.tar.gz http://ftp.meisei-u.ac.jp/mirror/apache/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz
RUN tar -xvzf /opt/apache-tomcat-7.0.47.tar.gz

EXPOSE 8080

ENTRYPOINT /opt/apache-tomcat-7.0.47/bin/startup.sh && tail -f /opt/apache-tomcat-7.0.47/logs/catalina.out

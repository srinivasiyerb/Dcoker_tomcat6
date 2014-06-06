FROM    centos

# install openjdk
RUN  yum -y update

RUN yum -y install java-1.7.0-openjdk-devel

# install tomcat6
RUN yum -y install tomcat6

EXPOSE 8080

ENTRYPOINT [ "service", "tomcat6", "start" ]

CMD [ "tail", "-f", "/var/lib/tomcat7/logs/catalina.out" ]

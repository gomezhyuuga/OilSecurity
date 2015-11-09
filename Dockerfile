FROM tomcat:8-jre8
MAINTAINER "Fernando Gómez <gomezhyuuga@gmail.com>"

LABEL Description="Tomcat server with custom ROOT app" Vendor="ITESM" Version="1.0"


# ADD tomcat_cfg/ROOT.xml /usr/local/tomcat/conf/Catalina/localhost/
ADD tomcat_cfg/tomcat-users.xml /usr/local/tomcat/conf/
ADD OilSecurity/lib/mysql-connector-java-5.1.37-bin.jar /usr/local/tomcat/lib/

RUN rm -rf /usr/local/tomcat/webapps/ROOT*

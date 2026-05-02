FROM tomcat:9.0.117
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh", "run"]

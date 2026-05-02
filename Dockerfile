# Use official Tomcat image
FROM tomcat:9.0

# Remove default apps (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat
COPY target/*.war /usr/local/tomcat/webapps/

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

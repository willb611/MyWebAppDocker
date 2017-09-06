FROM glassfish:latest

COPY MyWebApp.war /
COPY start.sh /

EXPOSE 8080

ENTRYPOINT ["/start.sh"]
FROM glassfish:4.1

COPY MyWebApp.war /
COPY start.sh /

EXPOSE 8080

ENTRYPOINT ["/start.sh"]
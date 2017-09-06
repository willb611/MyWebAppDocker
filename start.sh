#!/bin/sh
set -v

/usr/local/glassfish4/bin/asadmin start-domain
/usr/local/glassfish4/bin/asadmin -u admin deploy /MyWebApp.war

# Stop the docker instance from closing
tail -f /dev/null

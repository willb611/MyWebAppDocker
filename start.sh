#!/bin/sh
set -v

ADMIN_USER=admin
ADMIN_PASSWORD=changeit

# set credentials to admin/changeit
echo 'AS_ADMIN_PASSWORD=\nAS_ADMIN_NEWPASSWORD='$ADMIN_PASSWORD'\n' >> /opt/tmpfile

echo 'AS_ADMIN_PASSWORD='$ADMIN_PASSWORD'\n\' >> /opt/pwdfile

/usr/local/glassfish4/bin/asadmin start-domain
/usr/local/glassfish4/bin/asadmin --user $ADMIN_USER --passwordfile=/opt/tmpfile change-admin-password
/usr/local/glassfish4/bin/asadmin --user $ADMIN_USER --passwordfile=/opt/pwdfile enable-secure-admin
/usr/local/glassfish4/bin/asadmin restart-domain

# cleanup
rm /opt/tmpfile


/usr/local/glassfish4/bin/asadmin -u admin --passwordfile /opt/pwdfile deploy /MyWebApp.war
# /usr/local/glassfish4/bin/asadmin stop-domain
# /usr/local/glassfish4/bin/asadmin start-domain --verbose
# cp /MyWebApp.war /usr/local/glassfish4/domains/domain1/autodeploy/
tail -f /dev/null
#/usr/local/glassfish4/bin/asadmin -u admin deploy /MiOcadoWebApplication.war

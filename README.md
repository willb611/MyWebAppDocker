Simple docker file/test to deploy a war in docker, and access via the browser.

## Build docker instance
Assuming presence of 'MyWebApp.war' and 'start.sh' in this directory. If your war file is labelled differently, then change references to MyWebApp to whatever your war file is called. 
Also Replace *appname* with whatever you want to call the resulting docker image.
``` sudo docker build --no-cache -t appname . ```

## Start app
Replace *appname* with whatever you called the resulting docker image in the previous step. Be sure not to close the console or it will kill the docker instance.
``` sudo docker run -it -p 8080:8080 -p 4848:4848 -p 8181:8181 --rm mywebapp ```

## Access the deployed web app
Be sure to change MyWebApp to whatever your war file/application is called.
``` http://0.0.0.0:8080/MyWebApp/ ```




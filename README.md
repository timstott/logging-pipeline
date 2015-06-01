# Enterprise Logging

## TODO
- [ ] create certificate authority to enable lumberjack protocal
- [ ] persist sinatra logs to disk
- [ ] persist nginx logs to disk
- [ ] mount logstash-forwader volume to sinatra and nginx

## Components

### NGINX
Reverse proxy to sinatra application. Logs request as syslog.

### Sinatra
Hello world application. Logs requests as json events.

### Logstash
Receive, process and output logs in various formats

### Logstash-forwarder
Transports NGINX and sinatra logs to Logstash

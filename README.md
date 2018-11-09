## Using NGINX as a TLS proxy with Docker

The project will use Docker compose to setup 3 containers. The TCP container will wait for an incomming TCP connection and
nginx container will proxy the connection from the TLS container to the TCP container. 


### Setup Test

Create self signed certificates and add them to the  [.nginx/certs/](.nginx/certs) and [.tls/certs/](.tls/certs) folder.

```
cd nginx/certs/
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./nginx.key -out ./nginx.crt -subj '/CN=tls-proxy.test.org'
cp nginx.crt ../../tls/certs/nginx.crt
cp nginx.key ../../tls/certs/nginx.key

```

### Run Test

Docker Compose can be used to test the setup. After setup run:

```
docker-compose up --build

```



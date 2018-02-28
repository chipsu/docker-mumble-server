# Another Mumble server for Docker

## Usage
```docker run --rm -t -e SUPERUSER_PASSWORD=VerySecret -e SERVERPASSWORD=Secret chipu/mumble-server```

## Variables
You can use the following variables to override ini settings:

 -SUPERUSER_PASSWORD
 -SERVERPASSWORD
 -DEFAULTCHANNEL
 -BANDWIDTH

Or just replace the /mumble-server.ini with your own using mounts.

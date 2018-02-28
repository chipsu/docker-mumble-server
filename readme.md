# Another Mumble server for Docker

## Usage
```docker run --rm -t -e SUPERUSER_PASSWORD=VerySecret -e SERVERPASSWORD=Secret chipu/mumble-server```

## Variables
You have to set a password for the superuser using SUPERUSER_PASSWORD.
You can also use the following variables to override ini settings:
- SERVERPASSWORD
- DEFAULTCHANNEL
- BANDWIDTH

Or just replace the /mumble-server.ini with your own using mounts.

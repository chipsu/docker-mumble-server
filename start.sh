#!/bin/bash

if [[ "$SUPERUSER_PASSWORD" = "" ]]; then
    echo "SUPERUSER_PASSWORD not set!"
    exit 1
fi

/usr/sbin/murmurd -fg -supw "$SUPERUSER_PASSWORD"

[[ "$SERVERPASSWORD" != "" ]] && sed -i "s/serverpassword=.*/serverpassword=$SERVERPASSWORD/g" /mumble-server.ini
[[ "$DEFAULTCHANNEL" != "" ]] && sed -i "s/defaultchannel=.*/defaultchannel=$DEFAULTCHANNEL/g" /mumble-server.ini
[[ "$BANDWIDTH" != "" ]] && sed -i "s/bandwidth=.*/bandwidth=$BANDWIDTH/g" /mumble-server.ini

/usr/sbin/murmurd -fg -ini /mumble-server.ini

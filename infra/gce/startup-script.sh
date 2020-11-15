#!/bin/bash

envfile=/opt/automuteus/.env

external_ip=$(curl -H "Metadata-Flavor: Google" 'http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip')
envfile_new_row="GALACTUS_HOST=http:\/\/${external_ip}"

sed -e "s/^GALACTUS_HOST=.*/${envfile_new_row}/" ${envfile} >.env.tmp && mv .env.tmp ${envfile}

# Restart after envfile replaced.
systemctl restart automuteus

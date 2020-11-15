#!/bin/bash
project_name="changeme-to-your-project"
inctance_name="changeme-to-your-instance"
zone="us-west1-b"
gcloud compute instances add-metadata ${inctance_name} \
    --metadata-from-file startup-script=./startup-script.sh \
    --project=${project_name} --zone=${zone}

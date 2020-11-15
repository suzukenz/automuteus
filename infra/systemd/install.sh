#!/bin/bash
sudo cp automuteus.service /etc/systemd/system/automuteus.service
sudo systemctl daemon-reload
sudo systemctl enable automuteus

#!/usr/bin/env bash

cd ~
ssh-keygen -R 192.168.100.10
ssh-keygen -R 192.168.100.11
ssh-keygen -R 192.168.100.12
echo Done.

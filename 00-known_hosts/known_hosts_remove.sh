#!/usr/bin/env bash

cd ~
ssh-keygen -R 172.16.10.10
ssh-keygen -R 172.16.10.11
ssh-keygen -R 172.16.10.12
echo Done.

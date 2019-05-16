#!/usr/bin/env bash

cd ~
ssh-keyscan 192.168.100.10 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.100.11 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.100.12 >> ~/.ssh/known_hosts
echo Done.

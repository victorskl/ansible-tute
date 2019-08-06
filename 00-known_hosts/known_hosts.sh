#!/usr/bin/env bash

cd ~
ssh-keyscan 172.16.10.10 >> ~/.ssh/known_hosts
ssh-keyscan 172.16.10.11 >> ~/.ssh/known_hosts
ssh-keyscan 172.16.10.12 >> ~/.ssh/known_hosts
echo Done.

#!/bin/bash

echo Joining domain
realm join --user=adminclounsbury brodylabs.com

echo Renaming default sssd.conf file
mv /etc/sssd/sssd.conf /etc/sssd/sssd.conf.old

echo Copying configured sssd.conf file and setting permissions
cp ./sssd.conf /etc/sssd/
chmod 600 /etc/sssd/sssd.conf

echo Restarting sssd service
systemctl restart sssd

echo Listing realms
realm list

echo Domain join complete. 

#!/usr/bin/env bash

# This script must be run as root

if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

while true; do
  read -p "Remove all Docker Machine VMs? (Y/N): " yn
  case $yn in
    [Yy]* ) docker-machine rm -f $(docker-machine ls -q); break;;
    [Nn]* ) break;;
    * ) echo "Please answer yes or no."; exit 1;;
  esac
done

echo "Removing docker binaries...\n\n"
rm -f /usr/local/bin/docker
rm -f /usr/local/bin/docker-machine
rm -r /usr/local/bin/docker-machine-driver*
rm -f /usr/local/bin/docker-compose

echo "Removing compose bash-completion...\n\n"
rm -f /etc/bash_completion.d/docker-compose

echo "Removing docker-cleanup command...\n\n"
echo /usr/local/bin/docker-cleanup

echo "All Done!"
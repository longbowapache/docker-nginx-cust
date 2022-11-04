#!/usr/bin/env bash
# Run as root or with sudo
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root or with sudo."
  exit 1
fi
# Ensure curl is installed
apt-get update && apt-get install curl -y
# Ensure the required software to compile NGINX is installed
apt-get -y install \
  git \
  binutils \
  build-essential \
  curl \
  dirmngr \
  libssl-dev \
  libxml2-dev \
  libxslt-dev

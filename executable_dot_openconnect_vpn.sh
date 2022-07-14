#!/usr/bin/env bash

export VPN_USER='mstickel@epages.com'
export VPN_GROUP='3_SPLIT_VPN'
export VPN_HOST='https://vpn.epages.com'

function vpn_up() {
  RED_COLOR=$(tput setaf 1)
  DEFAULT_COLOR=$(tput sgr0)

  # Check if required variables are set
  if [[ -z ${VPN_USER} ]]; then
    echo "${RED_COLOR}ERROR: environment variable VPN_USER not set${DEFAULT_COLOR}"
    exit 1
  fi
  if [[ -z ${VPN_HOST} ]]; then
    echo "${RED_COLOR}ERROR: environment variable VPN_HOST not set${DEFAULT_COLOR}"
    exit 1
  fi

  echo "Starting the VPN ..."
  VPN_PASSDWD=$(op item get bvf6765ifhazcmuglmp22rvn7e --field label=password)
  echo "$VPN_PASSDWD" | sudo openconnect --background --user=$VPN_USER --authgroup=$VPN_GROUP --passwd-on-stdin $VPN_HOST
}

function vpn_down() {
  sudo kill -2 "$(pgrep openconnect)"
}

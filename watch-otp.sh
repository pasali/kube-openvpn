#!/usr/bin/env bash
while inotifywait -qq -e create /tmp/openvpn/otp/; do
  cp /tmp/openvpn/otp/* /etc/openvpn/otp/
  chmod 0400 /etc/openvpn/otp//*
done

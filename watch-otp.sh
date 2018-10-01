#!/usr/bin/env bash
while inotifywait -qq -e create /tmp/openvpn/otp/; do
  cp /tmp/openvpn/otp/* ${OPENVPN_OTP_PATH}
  chmod 0400  ${OPENVPN_OTP_PATH}/*
done

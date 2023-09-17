#!/bin/bash

# check PermitRootLogin
if grep -q "PermitRootLogin yes" /etc/ssh/sshd_config; then
  echo "PermitRootLogin already set to yes. No action required."
else
  echo "PermitRootLogin yes" | sudo tee -a /etc/ssh/sshd_config > /dev/null
  echo "PermitRootLogin set to yes."
fi

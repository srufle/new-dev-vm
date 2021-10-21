#!/bin/bash

SUDO_PASS=$(cat /tmp/vault.pass)
ansible-playbook -v install.yaml --extra-vars "ansible_sudo_pass=${SUDO_PASS}"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
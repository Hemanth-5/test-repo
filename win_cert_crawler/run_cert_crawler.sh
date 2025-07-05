#!/usr/bin/env bash
set -e

PLAYBOOK=windows_cert_crawler_install.yml
INVENTORY=hosts.ini

EXTRA_VARS="fid='22z225@psgtech.ac.in' installation_path='C:/Temp/CertCrawler/' operation_mode='opmode2' cert1_path='C:/Temp/CertCrawler/test-certs/test1.p12' cert1_password='pwd1!'"

echo "Running ansible-playbook with variables:"
echo $EXTRA_VARS

ansible-playbook -i $INVENTORY $PLAYBOOK -e "$EXTRA_VARS"

echo "Playbook completed successfully."

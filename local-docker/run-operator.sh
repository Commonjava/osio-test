#!/bin/bash

rm -rf /opt/operations
git clone https://github.com/jdcasey/osio-test.git /opt/operations

cd /opt/operations
set -x
ansible-playbook -i ./hosts -c local -e @/opt/config/osio-extras-jdcasey.yml -e push_changes=true "$@"

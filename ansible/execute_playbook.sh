#!/bin/bash

echo "Ansible ausführen..."
cd ~/Projects/arch-setup/ansible 
ansible-playbook playbook.yml -K

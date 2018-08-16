#!/bin/bash

ANSIBLE_CONFIG=ansible.cfg ansible-playbook deploy.yml -i hosts --ask-pass --ask-become-pass -v


# Ansible in a container

A docker container containing the lastest version of ansible.

It mainly used to check the syntax of our playbooks.

Usage:

    docker run --rm -v $(pwd):/code stormz/ansible ansible-playbooks --syntax-check myplaybook.yml

# ARA Docker

[Ansible Ara](https://github.com/openstack/ara) simple Dockerfile based on alpine linux

No SSL, No Remote database, No persistence.

It just `pip install ara`, `expose 9191` and `ara-manage runserver -h 0.0.0.0`

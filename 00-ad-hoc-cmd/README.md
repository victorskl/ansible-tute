# Ad-Hoc Commands

- command line arguments
```
ansible -i ../hosts.ini all -u vagrant -m ping
ansible -i ../hosts.ini all -u vagrant -a "whoami"
```

- command line arguments with root
```
ansible -i ../hosts.ini all -u vagrant -b --become-method=sudo -m ping
ansible -i ../hosts.ini all -u vagrant -b --become-method=sudo -a "whoami"
```

- include localhost
```
ansible localhost -e 'ansible_python_interpreter="/usr/bin/env python"' -m ping
ansible -i ../hosts.yml all -u vagrant -m ping
```

## REF

- https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html
- https://docs.ansible.com/ansible/latest/user_guide/intro_adhoc.html

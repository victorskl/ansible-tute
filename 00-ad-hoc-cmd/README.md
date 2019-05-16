# Ad-Hoc Commands

- https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html
- https://docs.ansible.com/ansible/latest/user_guide/intro_adhoc.html

---
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

- invoke command with `-a` flag
```
ansible all -a "whoami"
ansible all -a "hostname"
ansible all -a "date"
ansible all -a "uptime"
ansible cluster -a "uptime"
ansible cluster -b --become-method=sudo -a "df -Th"
ansible cluster -b --become-method=sudo -a "du -sh /tmp"
```

- using [modules](https://docs.ansible.com/ansible/latest/modules/modules_by_category.html) with `-m` flag
```
ansible cluster -m shell -a 'echo $TERM'

ansible cluster -m copy -a "src=./dummy.py dest=/tmp/dummy.py"
ansible cluster -a "ls -l /tmp"

ansible cluster -m file -a "dest=/tmp/dummy.py mode=700"
ansible cluster -a "ls -l /tmp"

ansible cluster -b --become-method=sudo -m yum -a "name=tree state=present"

ansible cluster -m file -a "dest=/tmp/test/subdir/leaf mode=755 owner=vagrant group=vagrant state=directory"

ansible cluster -a "ls -l /tmp"
ansible cluster -a "tree /tmp/test"

ansible master -m setup
ansible node1 -m setup
ansible node2 -m setup
```

- background job
```
ansible master -B 60 -P 0 -a "/bin/sleep 30"
ansible master -m async_status -a "jid=488359678239.2844"

ansible master -B 60 -P 1 -a "python /tmp/dummy.py"
ansible master -m async_status -a "jid=488359678239.2844"

ansible cluster -B 60 -P 0 -a "python /tmp/dummy.py"
ansible cluster -B 60 -P 2 -a "python /tmp/dummy.py"
```

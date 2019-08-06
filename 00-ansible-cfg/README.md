# Using `ansible.cfg`

```
ansible-config list
ansible-config view
ansible-config --help
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
ansible all -m ping
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

## REF

- https://docs.ansible.com/ansible/latest/installation_guide/intro_configuration.html
- https://docs.ansible.com/ansible/latest/reference_appendices/config.html
- https://docs.ansible.com/ansible/latest/cli/ansible-config.html
- https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg

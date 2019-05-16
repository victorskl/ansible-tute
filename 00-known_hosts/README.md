# ansible ssh known_hosts

```
The authenticity of host '<xxx>' can't be established.
ECDSA key fingerprint is SHA256:<xxx>.
Are you sure you want to continue connecting (yes/no)?
```

Above `~/.ssh/known_hosts` issue might be encountered when first time running Ansible script against target hosts that never been login once. It could be that these target hosts are dynamically created.

- Easy way is just ssh login once to these hosts, if just a couple of hosts.
- Or, use `ssh-keyscan` e.g. see `known_hosts.sh` to populate key fingerprint to `known_hosts` file
- And, use `ssh-key -R <name>` to remove, if any. See `known_hosts_remove.sh`
- Not recommended but quick-dirty way is disable `StrictHostKeyChecking` in ssh client config. This might still be valid, if you explicitly trust those clustered hosts sit within private trusted network. 

```
vi ~/.ssh/config

  StrictHostKeyChecking no
```

- Ansible also provide way to disable [Host Key Checking](https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html#host-key-checking). See [ansible-cfg](../00-ansible-cfg)
```
vi ~/.ansible.cfg
  [defaults]
  host_key_checking = False

(or)

export ANSIBLE_HOST_KEY_CHECKING=False
```

# ansible-tute

Ansible tutorials


```
brew install ansible
```

How Ansible Work

https://www.ansible.com/overview/how-ansible-works

Awhile back, Ansible is mainly used as software [configuration management](https://www.ansible.com/use-cases/configuration-management) tool for [application deployment](https://www.ansible.com/use-cases/application-deployment). Later, it expanded with [modules](https://docs.ansible.com/ansible/latest/modules/modules_by_category.html) to support [infrastructure provisioning](https://www.ansible.com/use-cases/provisioning) especially supporting major [Cloud providers](https://docs.ansible.com/ansible/latest/modules/list_of_cloud_modules.html) like AWS, Azure, GCP, OpenStack, etc. Ansible even go further as post software deployment stages like [orchestration](https://www.ansible.com/use-cases/orchestration) among software stack and software components interaction in distributed IT systems. 


Ansible Documentation

https://docs.ansible.com/

Key Concepts

https://docs.ansible.com/ansible/latest/network/getting_started/basic_concepts.html

Ansible itself has none other than SSH dependency, which is by default a OpenSSH program ship with any major Linux distribution. At abstract, Ansible is just remote invocation of commands (tasks) over SSH. And, therefore, [Ansible is agentless architecture](https://en.wikipedia.org/wiki/Ansible_%28software%29) by nature.


## prerequisite

All tutes here are using VirtualBox simple cluster setup as follows: 
https://github.com/victorskl/vagrant-tute/tree/master/01-simple-cluster

```
git clone https://github.com/victorskl/vagrant-tute.git
cd 01-simple-cluster && vagrant up
```

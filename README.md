# Ansible onion ssh script

This ansible project provisions tor and onion ssh on servers, places the *onion_\<servername\>.bash* to connect to the corresponding server on the client

1) Write a *hosts* file containing your servers and you local client:

```ini
[server1]
192.168.1.227

[server2]
192.168.1.179

[client]
127.0.0.1
```

You can use ip addresses or hostnames (domains).

2) List the hosts in *deploy.yml*:

```yml
---

- hosts: server1
  user: grc2
  roles:
    - torsshserver

- hosts: server2
  user: tesla42
  roles:
    - torsshserver

- hosts: client
  user: stefan
  roles:
    - torsshclient
```

3) Run *./install.bash*

4) Type the password and root password. Currently they must be the same for all hosts.

5) After provisioning is ready, you have the two files *onionssh_192.168.1.179.bash* and *onionssh_192.168.1.227.bash* in your client local directory.

6) Run the corresponding script giving the username as argument:

```
onionssh_192.168.1.179.bash tesla42
```

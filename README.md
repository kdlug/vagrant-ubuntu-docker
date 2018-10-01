# Vagrant Docker

Vagrant VM based on Ubuntu with Docker and Docker Compose.

## Installation

### Virtualbox

```bash
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get install virtualbox
```

### Vagrant

```bash
sudo apt-get install vagrant
```

## Vagrant Commands

Creates and configures guest machines according to your Vagrantfile

```bash
vagrant up
```

Login

```bash
vagrant ssh
```

Turn off

```bash
vagrant halt
```

Hibernate

```bash
vagrant suspend
```

Resume

```bash
vagrant resume
```

Status

```bash
vagrant status
```

Destroy

```bash
vagrant destroy
```

Run provision on running machine

```bash
vagrant provision
```

## Virtualbox Commands

List of virtual machines

```bash
vboxmanage list vms
```

Shutdown VM

```bash
vboxmanage controlvm [vm-name] poweroff
```

Remove VM from Virtualbox

```bash
vboxmanage unregistervm [vm-name]
```

## Troubleshooting
`vagrant ssh` causes the following error:
```txt
ssh_exchange_identification: read: Software caused connection
```

Try to run: 
```bash
vagrant reload
```


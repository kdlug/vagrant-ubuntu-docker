Vagrant.configure("2") do |config|
 
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "ubuntu"
  # name of the machine (vagrant status) 
  config.vm.define "ubuntu-docker"
  # change virtualbox name (vboxmanage list vms)
  config.vm.provider :virtualbox do |vb|
    vb.name = "ubuntu-docker"
  end

  # SSH agent forwarding
  config.ssh.forward_agent = true

  # run as root
  config.vm.provision "shell", 
    path: "./scripts/provision.sh"

  # run as vagrant user
  config.vm.provision "shell", 
    privileged: false,
    path: "./scripts/bash-theme.sh"

  # A message to show after vagrant up
  config.vm.post_up_message = <<-MESSAGE
    All done!
    Now you have to add a domain to your HOST system.
    To access to the database you have to run:
        ...
    To generate assets:see the logs for your new nodes run:
	docker exec -it ...
  MESSAGE
end

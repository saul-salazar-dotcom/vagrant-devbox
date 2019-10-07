Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/bionic64'

  # Add timeout
  config.vm.boot_timeout = 300

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing 'localhost:8080' will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  config.vm.network 'forwarded_port', guest: 80, host: 80
  config.vm.network 'forwarded_port', guest: 8080, host: 8080
  config.vm.network 'forwarded_port', guest: 3000, host: 3000
  config.vm.network 'forwarded_port', guest: 3001, host: 3001
  config.vm.network 'forwarded_port', guest: 3002, host: 3002
  config.vm.network 'forwarded_port', guest: 3003, host: 3003

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network 'private_network', ip: '192.168.33.10'

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network 'public_network'

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder 'E:/work', '/work'

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'development-box'
    vb.memory = '8192'
    vb.cpus = 2

    # Makes appear a windows with a terminal
    vb.gui = true

    # Enable SSH x11 Forwarding
    config.ssh.forward_agent = true
    config.ssh.forward_x11 = true

    # Only use 50% of host CPU:
    vb.customize ['modifyvm', :id, '--cpuexecutioncap', '50']
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end

  # software development
  config.vm.provision "shell", path: "tools/install-nvm.sh"
  config.vm.provision "shell", path: "tools/install-dotnet.sh"
  config.vm.provision "shell", path: "tools/install-golang.sh"
  config.vm.provision "shell", path: "tools/install-java.sh"

  # Docker, OpenShift & Cloud CLI (AWS, Google, Azure, DigitalOcean)
  config.vm.provision "shell", path: "tools/install-docker.sh", args: "--minikube"
  config.vm.provision "shell", path: "tools/install-docker-compose.sh"
  config.vm.provision "shell", path: "tools/install-openshift-oc.sh"
  config.vm.provision "shell", path: "tools/install-cloud-cli.sh"

  # DevOps Tools
  config.vm.provision "shell", path: "tools/install-terraform.sh"
  config.vm.provision "shell", path: "tools/install-ansible.sh"
  config.vm.provision "shell", path: "tools/install-chef.sh"

  # Tools
  config.vm.provision "shell", path: "tools/install-x11-xauth.sh"
  config.vm.provision "shell", path: "tools/vagrant-swapfile.sh"
end

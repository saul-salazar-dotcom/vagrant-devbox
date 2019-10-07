# postinstall.sh for Ubuntu 12.04 base ami
# Online at: https://gist.github.com/andruby/5389159
# Usage: config.vm.provision :shell, :inline => "curl 'https://gist.github.com/andruby/5389159/raw' | sh"

if hash chef-client 2>/dev/null; then
    echo "Chef is already installed"
else
    echo "Chef is not available on the system"
    echo "Bootstrapping ruby & chef"

    # Apt-install various things necessary for Ruby
    apt-get -y update
    apt-get -y install linux-headers-$(uname -r) build-essential
    apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
    apt-get clean

    # Install Ruby from packages
    apt-get -y install ruby-full

    # Installing chef
    gem install chef --no-ri --no-rdoc
fi

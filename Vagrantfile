Vagrant.configure("2") do |config|

  config.vm.provider 'virtualbox' do |v|
    v.memory = 1536
    v.cpus = 1
  end


  devvm_disk = 'devvm.vdi'

  config.vm.define :devvm do |box|
      box.vm.box = "ubuntu/trusty64"
      box.vm.network :private_network, ip: "192.168.1.47"
      box.vm.host_name = "ubuntu-docker"
      box.vm.synced_folder "docker/", "/srv/docker"

      config.vm.provider 'virtualbox' do |v|
        v.memory = 2048
        v.cpus = 1
      end
      config.ssh.username = "vagrant"
      config.ssh.password = "vagrant"
      config.ssh.insert_key = true


      config.vm.provision "file", source: ".curlrc", destination: "/tmp/.curlrc"
      config.vm.provision "file", source: ".wgetrc", destination: "/tmp/.wgetrc"
      config.vm.provision "file", source: "apt.conf", destination: "/tmp/apt.conf"
      config.vm.provision :shell, :path => "proxy.sh"

      config.vm.provision "file", source: "config.json", destination: "/tmp/config.json"
      config.vm.provision :shell, :path => "install-docker.sh"
      config.vm.provision :shell, :path => "configure-proxy-docker.sh"
      config.vm.provision :shell, :path => "install-docker-compose.sh"
      config.vm.provision :shell, :path => "docker/composetest/run.sh", run: "always"
  end
end
Vagrant.configure("2") do |config|
    config.vm.box = "archlinux/archlinux"

    config.vm.provision "shell",
        inline: "echo -e    \"[options]\" >> /etc/pacman.conf"
    config.vm.provision "shell",
        inline: "echo -e    \"SigLevel = Never\" >> /etc/pacman.conf"

    config.vm.provision "shell",
        inline: "pacman -Sy --noconfirm archlinux-keyring  && sudo pacman -Syu --noconfirm"

    config.vm.provision "shell",
        inline: "sed -i -e 's/SigLevel = Never//g' /etc/pacman.conf"

    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "playbook.yml"
    end
end

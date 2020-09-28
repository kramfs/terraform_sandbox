#cloud-config
users:
    - name: kramfs
      gecos: kramfs
      sudo: ALL=(ALL) NOPASSWD:ALL
      groups: root, sys, admin
      ssh_import_id: kramfs
      home: /home/kramfs
      shell: /bin/bash
      lock_passwd: true

# Snap Command
# Convenience: the snap command can be omitted when specifying commands as a list and 'snap' will automatically be prepended.
#snap:
#    commands:
#        - snap install microk8s --channel=1.19/candidate --classic
#        #- ['install', 'microk8s']

# run commands
# Note, that the list has to be proper yaml, so you have to quote any characters yaml would eat (':' can be problematic)
#runcmd:
# - [ snap, install, mikrok8s ]
# - [ curl, -sfL, "https://get.k3s.io", |, INSTALL_K3S_CHANNEL=latest, K3S_KUBECONFIG_MODE="644", sh, -s, - ]
#  - usermod -a -G microk8s ubuntu
#  - chown -f -R ubuntu /home/ubuntu/.kube

# Update apt database on first boot (run 'apt-get update').
package_update: true
package_upgrade: true

packages:
 - htop

# final_message
# default: cloud-init boot finished at $TIMESTAMP. Up $UPTIME seconds this message is written by cloud-final when the 
# system is finished its first boot
final_message: "---[ The system is finally up, boot time took $UPTIME seconds ]--"
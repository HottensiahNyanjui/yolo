provider "local" {}

resource "null_resource" "provision_vm" {
  provisioner "local-exec" {
    command = "vagrant up"
  }

  provisioner "local-exec" {
    command = <<EOT
ANSIBLE_HOST_KEY_CHECKING=False \
ansible-playbook -i ../ansible/hosts ../ansible/playbook.yaml
EOT
  }
}

output "ansible_inventory" {
  value = <<EOT
[web]
yolo-ecommerce ansible_host=127.0.0.1 ansible_port=2222 ansible_user=vagrant ansible_ssh_private_key_file=${path.module}/../.vagrant/machines/default/virtualbox/private_key ansible_python_interpreter=/usr/bin/python3
EOT
}

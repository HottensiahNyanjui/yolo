provider "local" {}

resource "null_resource" "provision_vm" {
  provisioner "local-exec" {
    command = "vagrant up"
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ../ansible/hosts ../ansible/playbook.yaml"
  }
}

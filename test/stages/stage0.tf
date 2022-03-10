terraform {
}
module "setup_clis" {
  source = "github.com/cloud-native-toolkit/terraform-util-clis.git"
  clis   = ["yq", "jq"]
  # clis   = [“helm”, “rosa”]
}
resource "null_resource" "setup_clis" {
  depends_on = [
    "module.setup_clis"
  ]
  provisioner "local-exec" {
    #command = “echo -n ‘${module.clis.bin_dir}’ > .bin_dir”
    command = "echo -n '${module.setup_clis.bin_dir}' > .bin_dir"
  }
}

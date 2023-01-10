data "digitalocean_ssh_key" "default" {
  name = "ondrej"
}

module "a" {
  source = "../../modules/vm"
  name   = "dev-a"
  ssh_keys = [
    data.digitalocean_ssh_key.default.id,
  ]
}

data "digitalocean_ssh_key" "default" {
  name = "ondrej"
}

module "a" {
  source = "../../modules/vm"
  name   = "prod-a"
  ssh_keys = [
    data.digitalocean_ssh_key.default.id,
  ]
}

module "b" {
  source = "../../modules/vm"
  name   = "prod-b"
  ssh_keys = [
    data.digitalocean_ssh_key.default.id,
  ]
}

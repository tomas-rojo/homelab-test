resource "twingate_resource" "homelab" {
  name               = "Tomas Homelab"
  address            = "*.tomasrojo.cloud"
  remote_network_id  = twingate_remote_network.homelab_network.id
  security_policy_id = data.twingate_security_policy.default_policy.id

  protocols = {
    allow_icmp = true
    tcp = {
      policy = "ALLOW_ALL"
    }
    udp = {
      policy = "ALLOW_ALL"
    }
  }

  # dynamic "access_group" {
  #   for_each = [
  #     twingate_group.administrators.id
  #   ]
  #   content {
  #     group_id           = access_group.value
  #     security_policy_id = data.twingate_security_policy.default_policy.id
  #   }
  # }

  is_active = true
}
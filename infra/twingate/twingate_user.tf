# data "twingate_user" "admin" {
#   id = var.TWINGATE_ADMIN_USER_ID
# }

# resource "twingate_user" "new_user" {
#   email       = "new.user@example.com"
#   first_name  = "New"
#   last_name   = "User"
#   role        = "DEVOPS" # NOTE Defines the role, either ADMIN, DEVOPS, SUPPORT or MEMBER
#   send_invite = false
# }
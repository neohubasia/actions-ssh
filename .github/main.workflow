workflow "Copy File Via SSH" {
  on = "push"
  resolves = [
    "Executing remote ssh commands",
  ]
}

action "Executing remote ssh commands" {
  uses = "appleboy/ssh-action@master"
  secrets = [
    "HOST",
    "PASSWORD",
  ]
  args = [
    "--user", "actions",
    "--script", "whoami",
  ]
}

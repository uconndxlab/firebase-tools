workflow "Build" {
  on = "push"
  resolves = ["Build"]
}

action "Build" {
  uses = "./"
  env = {
    NODE_VERSION = "11"
  }
}

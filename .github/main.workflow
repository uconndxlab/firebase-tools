workflow "Build" {
  on = "push"
  resolves = ["Build Image"]
}

action "Build Image" {
  uses = "./"
  env = {
    NODE_VERSION = "8"
  }
  secrets = ["FIREBASE_TOKEN"]
}

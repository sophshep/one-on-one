workflow "Create meeting notes" {
  resolves = ["Write meeting file and push"]
  on = "schedule(0 9 * * 1)"
}

action "Write meeting file and push" {
  uses = "./.github/one-on-one-action/"
  secrets = ["GITHUB_TOKEN"]
}

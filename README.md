# Firebase Tools for GitHub Actions
Inspired by [w9jds/firebase-action](https://github.com/w9jds/firebase-action). Here's what's included:

* Node
* Yarn
* Firebase Tools

## Usage
### Secrets

* `FIREBASE_TOKEN` - **Required**. The token to use for authentication. This token can be aquired through the `firebase login:ci` command.

### Environment variables

* `APP` - **Optional**. To specify a specific project to use for all commands, not required if you specify a project in your `.firebaserc` file.

#### Example

To authenticate with Firebase, and deploy to Firebase Hosting:

```hcl
action "Deploy Production Site" {
  uses = "uconndxlab/firebase-tools@master"
  args = "deploy --only hosting:prod"
  env = {
    APP = "id-of-firebase-project"
  }
  secrets = ["FIREBASE_TOKEN"]
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).


Download
# Create a folder
$ mkdir actions-runner && cd actions-runner# Download the latest runner package
$ curl -o actions-runner-osx-x64-2.332.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.332.0/actions-runner-osx-x64-2.332.0.tar.gz# Optional: Validate the hash
$ echo "99755a4f48d81da8d6a59bad6a3216a49394f41d2c842c39f921a1592d7d0733  actions-runner-osx-x64-2.332.0.tar.gz" | shasum -a 256 -c# Extract the installer
$ tar xzf ./actions-runner-osx-x64-2.332.0.tar.gz

Configure
# Create the runner and start the configuration experience
$ ./config.sh --url https://github.com/MyPipeline-Actions --token BUFNPQXGKCTMKQWDUHNFULLJWPUJC# Last step, run it!
$ ./run.sh

Using your self-hosted runner

# Use this YAML in your workflow file for each job
runs-on: self-hosted

---
# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" branch
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
     # - uses: actions/checkout@v4

      # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: |
          echo Add other actions to build,
          echo test, and deploy your project.
---

# Hyperion

A template repository featuring a containerized development environment utilizing the Ubuntu 20.04 image, designed for machine learning development with Python. The environment is set up using the [.devcontainer configuration](https://code.visualstudio.com/docs/devcontainers/containers) for seamless integration with VS Code.

## Usage

Install VS Code together with [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) and follow the steps below

```bash
git clone <this repo>
git remote remove origin
code . &
```

Rename the project name in `./devcontainer/devcontainer.json`. Press `Ctrl+Shift+P` and enter `Dev Containter: Rebuild and Reopen in Container` and start building.

After building the project, open a new terminal and activate project's virtualenv with

```bash
pipenv shell
```

P.S. If you have space constraints, use a Python image instead of Ubuntu 20.04.

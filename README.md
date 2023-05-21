# Hyperion - Containerized Development Template for VS Code

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

## Remarks

* If you have space constraints, use a Python image instead of Ubuntu 20.04.
* Feel free to enter specific versions of packages.
* If you need to use up-to-date versions, you can have a look into `requirements_stable.txt`.
* To replace JAX with CUDA 12, after activating virtualenv enter:
  * `pip install jax[cuda12_pip]==0.4.10 -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html`
  * This pipenv entry must be revised: `jax = {version = "==0.4.10", file = "https://storage.googleapis.com/jax-releases/jax_cuda_releases.html", extras = ["cuda12_pip"]}`
* To use the container from the terminal, use the conventional docker commands:

  ```bash
  docker container ls
  docker start <container_id>
  docker exec -it <container_id> /bin/bash
  ```

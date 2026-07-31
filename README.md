# Build
Since scarthgap BSP-25.1.1 we are using KAS version 5.2 and kas-container for building

### VM Prep
```bash
sudo apt install git-lfs
python3 -m venv ../myenv
. ../myenv/bin/activate
pip3 install kas==5.2
```

### Build directory prep
```sh
    cd mtk-chromium

    BUILD_BASE_DIR="${PWD}"
    export SSTATE_DIR="${BUILD_BASE_DIR}/sstate-cache-pod"
    export DL_DIR="${BUILD_BASE_DIR}/yocto_downloads"
    export KAS_BUILD_DIR="${BUILD_BASE_DIR}/build-pod"

    mkdir -p "$SSTATE_DIR" "$DL_DIR" "$KAS_BUILD_DIR"

```
### Direct build in kas-container
```sh
    kas-container --ssh-dir ${HOME}/.ssh build kas/chromium.yml
```

### Build in the shell

```sh
    kas-container --ssh-dir ${HOME}/.ssh shell kas/chromium.yml
    bitbake -c build chromium-ozone-wayland
```

# Create release tarball

### Prerequisites: chromium package already built.

```sh
    kas-container --ssh-dir ${HOME}/.ssh shell kas/chromium.yml
    ../do_release_tarball.sh
```

Release tarball will be available as `tar.gz` archive in top-level workspice directory:

```sh
    host$  ls -la ./chromium*
    -rw-r--r-- 1 dev dev 137990316 Feb 13 14:18 ./chromium-ozone-wayland_132.0.6834.6-r0+mersive_arm64.tar.gz
```

# Procedure of making new chromium release

* https://github.com/Mersive-Technologies/mtk-chromium/releases
* Click on "Draft new release"
* Choose tag -> enter new tag name
* upload chromium tar.gz package
* Fill brief description
* Once new release is integrated with yocto-phoenix prepare an PR to "develop" branch.

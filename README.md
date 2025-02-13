# Build

```sh
    kas build kas/chromium.yml
```

# Build in the shell

```sh
    host$    kas shell kas/chromium.yml
    sh-5.1$  bitbake -c build chromium-ozone-wayland
```

# Create release tarball

### Prerequisites: chromium package already built.

```sh
    host$    kas shell kas/chromium.yml
    sh-5.1$  ../do_release_tarball.sh
```

Release tarball will be available as `tar.gz` archive in top-level workspice directory:

```sh
    host$  ls -la ./chromium*
    -rw-r--r-- 1 dev dev 137990316 Feb 13 14:18 ./chromium-ozone-wayland_132.0.6834.6-r0+mersive_arm64.tar.gz
```

# rlsd2-delta

rlsd2 patches for autobuilding static packages at [http://static.minos.io](https://github.com/minos-org/minos-static)

Changes:

- scripts/
    - env-\*.sh, chroot\*.sh
        - environment scripts for controlling build chroot
    - gen-deps
        - per package targets
    - other files
        - use tar.gz as the default compress format

### cargo

Cargo is the Rust package manager

https://doc.rust-lang.org/cargo/

https://crates.io/

---

### dnf

reinstall all the subpackages installed of a package

```
# basically you can group with 'package-*'
sudo dnf5 reinstall 'kernel-*'
```

search by pkgs in corp

https://copr.fedorainfracloud.org/
https://copr.fedorainfracloud.org/coprs/

dnf5

```
dnf5 distro-sync
```

https://dnf5.readthedocs.io/en/latest/commands/distro-sync.8.html

---

Note: as last workaround to fix break / experiments

```
# not fast but lifesaver
sudo dnf5 reinstall '*'

# more effective
sudo dnf5 install 'alsa-*'

# more more
sudo dnf5 install 'alsa-*.x86_64'

```

### brew

https://github.com/Homebrew/brew

```
 brew install -s --HEAD neovim
```

Seems that upstream `--HEAD` only can be used
from `install` stage, it will not work at `update` or `reinstall`.

You can build from sources with `-s` or `--build-from-source`.

---

#### How to 'build-from-source' from a specific checkout, not HEAD? #1230

https://github.com/orgs/Homebrew/discussions/1230

### I need to compile all ?

NO, MacOs and "ubuntu" are precompiled
Only build for Fedora or non-stable / upstream branches

<https://docs.brew.sh/FAQ#why-do-you-compile-everything>

---

#### Homebrew terminology

https://docs.brew.sh/Formula-Cookbook#homebrew-terminology

```
formula
Homebrew package definition that builds from upstream sources

cask
Homebrew package definition that installs macOS native applications
```

---

# Flatpak

https://flatpak.org/

---

# snap

https://snapcraft.io/

https://snapcraft.io/docs/getting-started

#### How force install without signature

`sudo snap install --dangerous path_to_snap_file`

https://itsfoss.com/snap-metadata-signature-error/

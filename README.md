# SenseiMarv Dotfiles

## Requirements

- Homebrew installed: <https://brew.sh/index_de>

- ZSH installed and set up as default shell (preferably via the package manager): <https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms>

- chezmoi installed (preferably via the package manager): <https://www.chezmoi.io/install/>

- 1Password and 1Password CLI installed (preferably via the package manager): <https://1password.com/de/downloads/>, <https://1password.com/de/downloads/command-line/>

## Installation

Initialize chezmoi with this dotfiles repository:

```bash
chezmoi init https://github.com/SenseiMarv/dotfiles.git
```

Check the changes, chezmoi would do on the machine:

```bash
chezmoi diff
```

Apply the changes if everything looks good:

```bash
chezmoi apply -v
```

## Maintenance

### Update files

**Please be cautious to not leak secrets!** You can add secrets using the [Password manager integration](https://www.chezmoi.io/user-guide/password-managers/) or by using a password manager CLI (e.g. <https://developer.1password.com/docs/cli/>)

#### Through chezmoi (will automatically commit and push the changes after the edit)

```bash
chezmoi edit $FILE
```

After editing a file, the changes have to be applied (this step can be skipped if the `-a` / `--apply` flag was used in the command above):

```bash
chezmoi apply -v
```

#### Manually (will automatically commit and push the changes after the re-add)

e.g.

```bash
code $FILE
```

After editing a tracked file manually, it has to be re-added:

```bash
chezmoi add $FILE
```

### Update Brewfile

The [Brewfile](https://github.com/SenseiMarv/dotfiles/blob/mac/Brewfile) can be updated by running the following command in the user directory:

```bash
brew bundle dump --force
```

### Update masfile

The [masfile](https://github.com/SenseiMarv/dotfiles/blob/mac/masfile) can be updated by running the following command in the user directory:

```bash
mas list | sed -E 's/^[0-9]+[[:space:]]*//;s/ [^ ]*$//;s/[[:space:]]*$//' > masfile
```

### Pull updates

```bash
chezmoi update
```

You can pull updates without applying them (the changes can be applied afterwards via `chezmoi apply`):

```bash
chezmoi git pull -- --rebase && chezmoi diff
```

## Sources

- Chezmoi Website: <https://www.chezmoi.io/>
- Chezmoi User guide: <https://www.chezmoi.io/user-guide/>
- Chezmoi Reference: <https://www.chezmoi.io/reference/>
- Awesome dotfiles: <https://github.com/webpro/awesome-dotfiles>

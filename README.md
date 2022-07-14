# SenseiMarv Dotfiles

## Requirements

- Homebrew installed: <https://brew.sh/index_de>

- ZSH installed and set up as default shell (preferably via the package manager): <https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms>

- chezmoi installed (preferably via the package manager): <https://www.chezmoi.io/install/>

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

#### NEVER UPDATE THE DOTFILES DIRECTLY

```bash
chezmoi edit $FILE
```

After editing a file, the changes have to be applied:

```bash
chezmoi apply -v
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

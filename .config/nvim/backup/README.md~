# .dotfiles
A repository holding dot and conf files

### Starting from Scratch

```sh
git init --bare $HOME/.dotfiles
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshenv
```

- The first line creates a folder `~/.dotfiles` is a Git bare repository that will track the configuration files.
- Next lines create an alias `config` which will be used instead of the regular `git` to interact with the configuration repository.
- Set a flag `-local` to the repository to hide files that are not being explicitly tracked. This is so `config status` and other commands can be used later, files that should not be tracked will not show up as untracked.
- Also you can add the alias definition by hand or use the the fourth line provided for convenience.

The above lines are packaged nto a snippet in gist and linked from `git.io`. So things can be set up with:

```sh
curl -Lks https://git.io/JT4bp | /bin/zsh
```

After the setup has been executed any file within the $HOME folder can be versioned with normal commands, replacing `git` with the newly created `config` alias, like:

```sh
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```
### Install `dotfiles` onto a new system

- Prior to the installation ensure the alias below is in the `.zsh` file:
```sh
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

- Ensure the source repository ignores the folder where it is cloned, so that there aren't recursion problems:
```sh
echo ".dotfiles" >> .gitignore
```

- Clone dotfiles into a bare repository in your `$HOME`:

```sh
git clone --bare <git-repo-url> $HOME/.dotfiles
```

- Checkout the actual content from the bare repository to `$HOME`:

```sh
config checkout
```

- Set the flag `showUntrackedFiles` to no on this specific (local) repository:

```sh
config config --local status.showUntrackedFiles no
```

---
Taken from Nicola Paolucci [article](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

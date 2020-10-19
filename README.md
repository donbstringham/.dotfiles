# .dotfiles
A repository holding dot and conf files

### Starting from Scratch

```sh
git init --bare $HOME/.dotfiles
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

- The first line creates a folder `~/.dotfiles` which is a Git bare repository that will track our files.
- Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository.
- We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type config status and other commands later, files you are not interested in tracking will not show up as untracked.
- Also you can add the alias definition by hand to your .bashrc or use the the fourth line provided for convenience.

I packaged the above lines into a snippet in gist and linked it from git.io. So things can be set up with:

```sh
curl -Lks https://git.io/vdtKH | /bin/bash
```

After you've executed the setup any file within the $HOME folder can be versioned with normal commands, replacing git with your newly created config alias, like:

```sh
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```
### Install `dotfiles` onto a new system

- Prior to the installation ensure you have the alias below in the `.bashrc` or `.zsh` file:
```sh
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

- Ensure the source repository ignores the folder where you'll clone it, so that you don't create recursion problems:
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

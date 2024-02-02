# Dot Files

Make a backup of your current dotfiles

```sh
mv ~/.bashrc ~/.bashrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
```

Make a link using stow

```sh
cd ~/dotfiles
apt install stow
stow .
```

Now you're good to go!

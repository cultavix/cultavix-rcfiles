# cultavix-rcfiles
collection of configuration files for vim, bash, ssh, top, tmux, etc

## Why?

It's a pain in the butt to have to keep re-configuring all of your stuff from scratch eachtime you rebuild your machine or work provides you a new one, so this little repo helps, at least me, keep my finely tweaked `rcfiles` in a place where I can just restore them very quickly.

## VIMRC

I don't even bother now, with projects like SpaceVim and my personal favourite, [Ultimate Vimrc](https://github.com/amix/vimrc)

Just run...
```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

## Terminal - Alacritty

You can find Alacritty here: https://github.com/jwilm/alacritty

To install, follow the instructions on their page.

I've recently started really using Alacritty in anger as I finally feel its stable enough and configurable enough to use, in combination with TMUX (see below)

Check out my config for it `alacritty.yml` which you'll need to place in `~/.config/alacritty/alacritty.yml`

#### Features / Configuration changes (more to come)
* Hack Nerd Font
* Copy on select
* Tab = 2 spaces
* Hide mouse when typing
* Beam cursor
* `alt + .` - assigns the alt key as the meta key Note: To use `#` on macOS, you'll need to use `cmd + 3`

Note: You'll want to make sure you have the font installed. I highly recommend: [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

## TMUX

This should be available on most systems... WSL, Linux, macOS.

* First of *all, you probably want to clone this repo, and then remember that everything is hidden. 
* All you have to do is copy `tmux.conf` and the `.tmux/` directory into your `$HOME` dir or `~`

Update! I've been combining this with [Alacritty](https://github.com/jwilm/alacritty) which is a cross-platform GPU powered Terminal which uses very little resources, has very little functionality but is MEGA fast. But we can solve the features it lacks with tmux. I've got tabs, split windows, sessions in the background, copy-on-paste. I'll shortly post my `alacritty.conf` file! Promise :)

## MINTTTY (Windows) Update: (maybe just use Alacritty? I need to try it myself)

* Copy the `.minttyrc` file to the `$HOME` dir or `~` dir.

Update! You may want to look into [Alacritty](https://github.com/jwilm/alacritty) mentioned above in 

## SSH Config

This is mostly useful if you are using Bastion hosts. It's a nice little trick to allow you to proxy through an SSH box to get into a private network over the internet.

*Example:*
```
Host 10.11.*
  User ubuntu
    ProxyCommand ssh -o 'ForwardAgent yes' user@bastion.example.com 'ssh-add && nc %h %p'
```
#### How to use
* You simply create `~/.ssh/config` file and paste the contents of my config file or just copy the above example.

#####
Author: [James Gonzalez](https://github.com/cultavix)

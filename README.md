# cultavix-rcfiles
collection of configuration files for vim, bash, ssh, top, tmux, etc

## Why?

It's a pain in the butt to have to keep re-configuring all of your stuff from scratch eachtime you rebuild your machine or work provides you a new one, so this little repo helps, at least me, keep my finely tweaked `rcfiles` in a place where I can just restore them very quickly.

## TMUX

* First of *all, you probably want to clone this repo, and then remember that everything is hidden. 
* All you have to do is copy `tmux.conf` and the `.tmux/` directory into your `$HOME` dir or `~`

Update! I've been combining this with [Alacritty](https://github.com/jwilm/alacritty) which is a cross-platform GPU powered Terminal which uses very little resources, has very little functionality but is MEGA fast. But we can solve the features it lacks with tmux. I've got tabs, split windows, sessions in the background, copy-on-paste. I'll shortly post my `alacritty.conf` file! Promise :)

## MINTTTY (Windows)

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

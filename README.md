# cultavix-rcfiles
collection of configuration files for vim, bash, ssh, top, tmux, etc

## How to use


#### TMUX

* First of *all, you probably want to clone this repo, and then remember that everything is hidden. 
* All you have to do is copy `tmux.conf` and the `.tmux/` directory into your `$HOME` dir or `~`

#### VIMRC

* Copy the `.vimrc` file to the `$HOME` dir or `~` dir.

#### MINTTTY

* Copy the `.minttyrc` file to the `$HOME` dir or `~` dir.

#### SSH Config

This is mostly useful if you are using Bastion hosts. It's a nice little trick to allow you to proxy through an SSH box to get into a private network over the internet.

*Example:*
```
Host 10.11.*
  User ubuntu
    ProxyCommand ssh -o 'ForwardAgent yes' user@bastion.example.com 'ssh-add && nc %h %p'
```
##### How to use
* You simply create `~/.ssh/config` file and paste the contents of my config file or just copy the above example.


TBC

class mgdev::tmux::dotfiles ($user = 'mgerow') {
  file {"${mgdev::dotfiles::homedir}/.tmux.conf":
    source => 'puppet:///modules/mgdev/tmux.conf',
  }
}
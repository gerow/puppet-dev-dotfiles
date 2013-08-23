class mgdev::dotfiles ($user = 'mgerow') {
  $homedir = "/home/${user}"
  class {'mgdev::tmux::dotfiles': }
  class {'mgdev::i3::dotfiles': }
}

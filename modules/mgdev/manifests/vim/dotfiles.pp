class mgdev::vim::dotfiles {
  file {"${mgdev::dotfiles::homedir}/.vimrc":
    owner => $mgdev::dotfiles::user,
    source => "puppet:///modules/mgdev/vimrc"
  }
}
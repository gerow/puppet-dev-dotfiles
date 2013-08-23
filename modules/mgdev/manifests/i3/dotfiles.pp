class mgdev::i3::dotfiles ($username = "mgerow") {
  file {"${mgdev::dotfiles::homedir}/.i3":
    ensure => directory,
    owner => $mgdev::dotfiles::user,
  }

  file {"${mgdev::dotfiles::homedir}/.i3/config":
    require => File["${mgdev::dotfiles::homedir}/.i3"],
    source => "puppet:///modules/mgdev/i3config",
    owner => $mgdev::dotfiles::user,
  }
}
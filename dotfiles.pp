$user = $hostname ? {
  mgerow-z420 => "mgerow",
  default => "gerow",
}

class {'mgdev::dotfiles': 
  user => $user,
}

{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
  anki
  sqlite
  mplayer2
  ranger
  gitFull
  gitAndTools.tig
  curl
  wget
  gcc
  ruby
  nmap
  ncdu
  unzip
  unrar
  dmenu
  i3lock
  p7zip
  pavucontrol
  dunst
  zathura
  networkmanagerapplet
  redshift
];
}

# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running â€˜nixos-helpâ€™).

{ config, pkgs, ... }:

networking.hostName = "devbox";
networking.hostId = "12345";

{
  imports =
    [
      /etc/nixos/hardware-configuration.nix  # Include the results of the hardware scan.
      ./exwm.nix
      ./qemu.nix
    ];

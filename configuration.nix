# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running â€˜nixos-helpâ€™).

{ config, ... }:

networking.hostName = "devbox";
networking.hostId = "12345";

{
  imports =
    [
      /etc/nixos/hardware-configuration.nix  # Include the results of the hardware scan.
      ./exwm.nix
      ./qemu.nix
      ./packages.nix
    ];

services = {
    nixosManual.showManual = true;
    locate.enable = true;
    ntp.enable = true;
    printing.enable = true;
    };
    
    redshift = {
      enable = true;
      latitude = "39.290385";
      longitude = "-76.612189";
      temperature.day = 5700;
      temperature.night = 4600;
    };
    ### who knows ##
    windowManager.default = "exwm";
    windowManager.exwm.enable = true;
    


{ config, pkgs, ... }:
{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
    timeout = 0;
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };
}


{ config, ... }:
{
  services = {
    openssh.enable = true;
    udisks2.enable = true;
    devmon.enable = true;
    printing.enable = true;
  };
}

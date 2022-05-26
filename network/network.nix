
{ config, ... }:
{
   networking = { 
    hostName = "beast";
    networkmanager.enable = true; 
    firewall.enable = true;
    firewall.allowPing = true;
  };
}

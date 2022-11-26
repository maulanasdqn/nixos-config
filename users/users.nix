
{ config, ... }:
{
 users.users.ms = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" "libvirtd" "networkmanager" "plugdev" ];
 };
}

# nixos-config
NixOS Config with Flakes and home-manager

# Usage

## Install GIT
`nix-env -iA nixos.git`

## Clone
`git clone https://github.com/maulanasdqn/nixos-config /mnt/<path>`

## Execute 
`nix-install --flakes .#<hostname>`

## Reboot
`reboot`

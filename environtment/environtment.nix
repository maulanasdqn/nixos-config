{ config, ... }:
{
  environment.variables = {
    NIXOS_CONFIG="$HOME/.config/nixos/configuration.nix";
    NIXOS_CONFIG_DIR="$HOME/.config/nixos/";
    PATH="$HOME/.npm-packages/bin:$PATH";
  };
}

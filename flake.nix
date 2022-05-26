{
  description = "Beast NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, home-manager, ... }: 
    let
      system = "x86_64-linux";
      user = "ms";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in 
    {
      nixosConfigurations = {
        beast = lib.nixosSystem {
          inherit system;
          modules = [
          ./configuration.nix
            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.ms = {
                imports = [ ./nixpkgs/home.nix ];
              };
            }
          ];
        };
      };
    };
}

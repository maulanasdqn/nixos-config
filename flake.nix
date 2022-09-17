{
  description = "Beast NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };
    android-nixpkgs = {
      url = "github:tadfisher/android-nixpkgs";
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
              home-manager.users.ms = {config, pkgs, lib, ...}: {
                imports = [
                  ./nixpkgs/home.nix
                  android-nixpkgs.hmModule
                   {
                     inherit config lib pkgs;
                     android-sdk.enable = true;
                     android-sdk.path = "${config.home.homeDirectory}/.android/sdk";
                     android-sdk.packages = sdk: with sdk; [
                       build-tools-31-0-0
                       cmdline-tools-latest
                       emulator
                       platforms-android-31
                       sources-android-31
                     ];
                   }
                ];
              };
            }
          ];
        };
      };
    };
}

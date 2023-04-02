{
  description = "Darwin Config";

  inputs = {
    # Where to get packages
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    # Home Manager Config
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    # Nix Darwin Config
    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    # Theme
    themes.url = "path:./themes";
  };

  outputs = inputs@{ nixpkgs, darwin, home-manager, themes, ... }: {
    # Global Configuration
    system.stateVersion = 4;
    nix.extraOptions = ''
      experimental-features = nix-command flakes
    '';

    nix.gc.automatic = true;
    nix.gc.interval = { Hour = 1; Minute = 0; };
    nix.settings.auto-optimise-store = true;

    
    # Device Config
    # NOTE After install or first build `sudo -i nix-channel --update darwin`
    darwinConfigurations."macOS-base" = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      pkgs = import nixpkgs {
        config.allowUnfree = true;
        system = "aarch64-darwin";
      };
      
      inputs = { inherit themes; };

      # TODO programs.ssh.knownHosts
      # TODO services.yabai.extraConfig
      # TODO Homebrew
      # TODO HomeManager

      modules = [
        ({ ... }: {
          services.nix-daemon.enable = true;
        })
        ./modules/nix-darwin/defaults.nix
        ./modules/nix-darwin/fonts.nix
        ./modules/nix-darwin/keyboard.nix
        ./modules/nix-darwin/packages.nix
        ./modules/dots/skhd.nix
        ./modules/dots/yabai.nix
        ./modules/dots/system-shell.nix
        home-manager.darwinModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.brandon.imports = [ 
              ./modules/home-manager/home-manager.nix
              ./modules/dots/sketchybar.nix
              ./modules/dots/kitty.nix
              ./modules/dots/zsh.nix
              ./modules/dots/xresources.nix
            ];
            extraSpecialArgs = { inherit darwin themes; };
          };
        }
      ];
    };
  };
}

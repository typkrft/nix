{ pkgs, themes, ... }: {
  home.stateVersion = "22.11";
  home.packages = with pkgs; [ ];

  programs.atuin.enable = true;
  programs.atuin.enableZshIntegration = true;
  programs.atuin.flags = [
    "--disable-up-arrow"
  ];

  programs.bat.enable = true;
  programs.bat.extraPackages = with pkgs.bat-extras; [ batdiff batman batgrep batwatch ];
  programs.bat.themes = {
    dracula = builtins.readFile (pkgs.fetchFromGitHub
      {
        owner = "dracula";
        repo = "sublime"; # Bat uses sublime syntax for its themes
        rev = "26c57ec282abcaa76e57e055f38432bd827ac34e";
        sha256 = "019hfl4zbn4vm4154hh3bwk6hm7bdxbr1hdww83nabxwjn99ndhv";
      } + "/Dracula.tmTheme");
  };

  programs.exa.enable = true;
  # programs.exa.enableAliases = true;
  programs.exa.extraOptions = [ ];
  programs.exa.git = true;
  programs.exa.icons = true;

  programs.fzf.enable = true;
  programs.fzf.enableZshIntegration = true;
  # programs.fzf.colors = { }; # TODO
  # programs.fzf.defaultOptions = [ ]; # TODO

  programs.gh.enable = true;
  programs.gh.extensions = with pkgs; [ gh-eco gh-dash ];

  programs.git.enable = true;
  programs.git.ignores = [ ".DS_Store" ];
  programs.git.userEmail = "downtowngg@gmail.com";
  programs.git.userName = "typkrft";

  programs.helix.enable = true;
  programs.helix.languages = [
    { auto-format = true; name = "python"; }
    { auto-format = true; name = "javascript"; }
    { auto-format = true; name = "json"; }
    { auto-format = true; name = "markdown"; }
    { auto-format = true; name = "nix"; }
    { auto-format = true; name = "toml"; }
    { auto-format = true; name = "yaml"; }
    { auto-format = true; name = "bash"; }
  ];
  # TODO
  programs.helix.settings = {
    theme = "dracula";
    editor.bufferline = "multiple";
    editor.cursor-shape = {
      insert = "bar";
      normal = "block";
      select = "underline";
    };
    keys.normal = {
      space.space = "file_picker";
      space.w = ":w";
      space.q = ":q";
    };
  };

  programs.jq.enable = true;
  # programs.jq.colors = {}; # TODO

  programs.navi.enable = true;
  programs.navi.enableZshIntegration = true;
  programs.navi.settings = { }; # TODO 

  programs.noti.enable = true;
  programs.noti.settings = { }; # TODO

  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;

  programs.tealdeer.enable = true;

  programs.zellij.enable = true;


  services.pbgopy.enable = false; # TODO

  # TODO xresources.extraConfig
  # TODO: Look in to services.recoll.enable
  # TODO: Setup MPV Youtube and Plex

}

# TODO: Reoganize and correct modules in flake.nix
# TODO: Add donfs to themes
# TODO: Add wallpapers
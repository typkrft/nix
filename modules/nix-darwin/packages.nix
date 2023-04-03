{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    coreutils
    helix
    ripgrep
    fd
    curl
    gnused
  ];

  users.users.brandon.packages = with pkgs; [
    bitwarden-cli
    jq
    pueue
    notify
    rnix-lsp
    nixpkgs-fmt
    zoxide
  ];

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
      upgrade = true;
    };
    global = {
      autoUpdate = true;
      brewfile = true;
    };
    masApps = {
      Spark = 1176895641;
      Bitwarden = 1352778147;
      "PDF Expert" = 1055273043;
    };
    taps = [
      "homebrew/services"
      "homebrew/cask-versions"
      "FelixKratz/formulae"
      "homebrew/command-not-found"
    ];
    casks = [
      "firefox-developer-edition"
      "betterdiscord-installer"
      "authy"
      "alfred"
      "visual-studio-code"
      "kitty"
      "espanso"
      "discord"
      "libreoffice"
      "caffeine"
    ];
    brews = [
      "php" # For 2fm alfred plugin 
      "openssl" "readline" "sqlite3" "xz" "zlib" "tcl-tk" # Python Build Dependencies
      "asdf"
      {
        name = "sketchybar";
        args = [ "head" ];
        restart_service = "changed";
        start_service = true;
      }
    ];
  };


}

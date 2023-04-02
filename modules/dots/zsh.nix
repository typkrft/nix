{ pkgs, themes, ... }: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = false;
    enableVteIntegration = true;
    autocd = true;
    history = {
      share = true;
    };
    sessionVariables = {
      EXA_ICON_SPACING = 2;
      AUTO_NOTIFY_THRESHOLD = 20;
    };
    initExtraFirst = ''
      . $(brew --prefix asdf)/libexec/asdf.sh
    ''; # Prepended to zshrc
    initExtraBeforeCompInit = ''
      # START brew completions
      FPATH="$(brew --prefix)/share/zsh/site-functions:''${FPATH}"
      # END brew completions
      # START completion options
      setopt globdots
      # END completion options
    ''; # before compinit
    initExtra = ''
      # START fzf-tab config
      # disable sort when completing `git checkout`
      zstyle ':completion:*:git-checkout:*' sort false
      # set descriptions format to enable group support
      zstyle ':completion:*:descriptions' format '[%d]'
      # set list-colors to enable filename colorizing
      zstyle ':completion:*' list-colors ''${(s.:.)LS_COLORS}
      # preview directory's content with exa when completing cd
      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --icons -a --group-directories-first --git --color=always $realpath'
      # switch group using `,` and `.`
      zstyle ':fzf-tab:*' switch-group ',' '.'
      # END fzf-tab config
      # START autosuggestions config
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      # END autosuggestions config
      # START Keybindings
      bindkey '^[[A' history-beginning-search-backward
      bindkey '^[[B' history-beginning-search-forward
      bindkey '^[[1;9D'  beginning-of-line
      bindkey '^[[1;9C'  end-of-line
      # END Keybindings
      # START chpwd functions
      function report() {
        DIRS=$(find . -mindepth 1 -maxdepth 1 -type d | wc -l)
        # HIDDEN_DIRS=$(find . -iname ".*" -mindepth 1 -maxdepth 1 -type d | wc -l)
        # TOTAL_DIRS=$(( $DIRS + $HIDDEN_DIRS ))
        
        FILES=$(find . -mindepth 1 -maxdepth 1 -type f | wc -l)
        # HIDDEN_FILES=$(find . -iname ".*" -mindepth 1 -maxdepth 1 -type f| wc -l)
        # TOTAL_FILES=$(( $FILES + $HIDDEN_FILES ))
        
        DIR_SIZE=$(timeout 0.5s du -sbh  . 2>/dev/null | awk '{print $1}')
        if [[ $? -ne 0 ]]; then 
            DIR_SIZE=""
        fi
        
        KEY_COLOR=$(tput bold; tput setaf 6)
        VALUE_COLOR=$(tput sitm; tput setaf 2)
        RESET_TEXT=$(tput sgr0)

        exa --icons -a --group-directories-first --git -F
        printf "\n"
        printf "''${KEY_COLOR}Path:''${RESET_TEXT}        ''${VALUE_COLOR}$(pwd)''${RESET_TEXT}\n"
        printf "''${KEY_COLOR}Folders:''${RESET_TEXT}     ''${VALUE_COLOR}''${DIRS}''${RESET_TEXT}\n"
        printf "''${KEY_COLOR}Files:''${RESET_TEXT}       ''${VALUE_COLOR}''${FILES}''${RESET_TEXT}\n"
        if [[ $DIR_SIZE != "" ]]; then 
            printf "''${KEY_COLOR}Size:''${RESET_TEXT}        ''${VALUE_COLOR}''${DIR_SIZE}''${RESET_TEXT}\n"
        fi
      }
      chpwd() {
        report
      }
      # END chpwd functions
      # START brew command not found
      HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
      if [ -f "$HB_CNF_HANDLER" ]; then
        source "$HB_CNF_HANDLER";
      fi
      # END brew command not found
      # START auto-notify conifg
      AUTO_NOTIFY_IGNORE+=('hx')
      # END auto-notify conifg
      # START syntax highlighting config
      zle_highlight=(paste:none)
      # END syntax Highlighting config
    ''; # After Compinit
    plugins = [ 
      # NOTE: Order Matters
      {
        name = "fzf-tab";
        file = "fzf-tab.zsh";
        src = pkgs.fetchgit {
          url = "https://github.com/Aloxaf/fzf-tab";
          sha256 = "sha256-dPe5CLCAuuuLGRdRCt/nNruxMrP9f/oddRxERkgm1FE=";
        };
      }
      {
        name = "zfm";
        file = "zfm.plugin.zsh";
        src = pkgs.fetchgit {
          url = "https://github.com/pabloariasal/zfm";
          sha256 = "sha256-EUtGPyU4DTgxdlGbspK/G94ZDoz4mFJS0z+BQMmwLF0=";
        };
      }
      {
        name = "ssh-completion";
        file = "zsh-ssh.zsh";
        src = pkgs.fetchgit {
          url = "https://github.com/sunlei/zsh-ssh";
          sha256 = "sha256-nUVIkoF400ZdwR+uKoW8cwG0uN/+HPWQ1k8/VwA5OJQ=";
        };
      }
      {
        name = "zsh-autopair";
        file = "autopair.zsh";
        src = pkgs.fetchgit {
          url = "https://github.com/hlissner/zsh-autopair";
          sha256 = "sha256-PXHxPxFeoYXYMOC29YQKDdMnqTO0toyA7eJTSCV6PGE=";
        };
      }
      {
        name = "zsh-notify";
        file = "auto-notify.plugin.zsh";
        src = pkgs.fetchgit {
          url = "https://github.com/MichaelAquilina/zsh-auto-notify";
          sha256 = "sha256-4/2wQC+kYH8gZZZZTfoioW64h+z7AF8xSPZPKc6qI3U=";
        };
      }
      {
        name = "fast-zsh-syntax";
        file = "fast-syntax-highlighting.plugin.zsh";
        src = pkgs.fetchgit {
          url = "https://github.com/zdharma-continuum/fast-syntax-highlighting";
          sha256 = "sha256-FJ3UYrhJK7ia4KBTLuUx6OftHcozMwOLKc4n/PO5s4g=";
        };
      }
    ];
    profileExtra = ''
      eval "$(/opt/homebrew/bin/brew shellenv)"
      eval "$(zoxide init zsh)"
    '';
    shellAliases = {
      nixu = "darwin-rebuild switch --flake ~/Code/Nix/.#macOS-base --recreate-lock-file";
      nixg = "sudo nix-collect-garbage -d";
      ls = "exa --icons -a --group-directories-first --git -F";
      ssh = "TERM=xterm-256color ssh";
      man = "batman";
      pip = "noglob pip";
    };
  };
  # programs.zsh.defaultKeymap = "viins";

}
# Nix Installation and Setup
1. [Install Nix](https://nixos.org/manual/nix/stable/installation/installing-binary.html#multi-user-installation)
2. [Install Home-Manager](https://nix-community.github.io/home-manager/index.html#sec-install-nix-darwin-module)
    - `nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager`
    - `nix-channel --update`
3. Build and Install the Flake
    - **NOTE**: There will be errors. mv/backup files blocking configuration
    - **EXAMPLE:** `nix build ~/.config/darwin\#darwinConfigurations.Johns-MacBook.system`
    - **EXAMPLE:** `./result/sw/bin/darwin-rebuild switch --flake ~/.config/darwin`

# After Upgrading macOS
```SHELL
sudo mv /etc/bashrc /etc/bashrc.orig
sudo mv /etc/zshrc /etc/zshrc.orig
sudo mv /etc/zprofile /etc/zprofile.orig
sudo /nix/var/nix/profiles/system/activate
exit  # Start a new shell to reload the environment.
```

# Helpful Links
## Docs
- [Install Nix](https://nixos.org/manual/nix/stable/installation/installing-binary.html)
- [Nixpkgs Manual](https://ryantm.github.io/nixpkgs/builders/fetchers/)
- [Adding Inputs in Modules](https://blog.nobbz.dev/posts/2022-12-12-getting-inputs-to-modules-in-a-flake/)
- [Nix Manual](https://nixos.org/manual/nix/unstable/)
- [Zero To Nix](https://zero-to-nix.com/concepts/flakes)
- [Stylix](https://danth.github.io/stylix/options/hm.html)
- [Nix Darwin Modules](https://daiderd.com/nix-darwin/manual/index.html)
- [Home Manager Manual](https://nix-community.github.io/home-manager/index.html)
## Repos
- [nix-darwin](https://github.com/LnL7/nix-darwin)
## Blogs
- [Dotfiles with nix and home manager](https://www.bekk.christmas/post/2021/16/dotfiles-with-nix-and-home-manager)
- [Intro to Flakes by Nix Creator](https://www.tweag.io/blog/2020-05-25-flakes/)
- [Declarative macOS config using Nix Darwin](https://www.reddit.com/r/unixporn/comments/q4x9hw/yabaiskhd_declarative_macos_config_using_nixdarwin/)
## Tools
- [Home Manager Option Search](https://mipmip.github.io/home-manager-option-search/)
## Videos
- [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://www.youtube.com/watch?v=AGVXJ-TIv3Y)
- [Wil T - Intro to Flakes](https://www.youtube.com/watch?v=K54KKAx2wNc&list=PL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-&index=8)
- [Almost Perfect Dotfiles Management w/ nix, home-manager and flakes](https://www.youtube.com/watch?v=CDzgNxoAlnA)
- **[Walkthrough of Nix Install and Setup on MacOS](https://www.youtube.com/watch?v=LE5JR4JcvMg&feature=youtu.be)**
## Others
- [List of Resources](https://www.reddit.com/r/NixOS/comments/v2xpjm/big_list_of_flakes_tutorials/)
- [Brew Packages](https://formulae.brew.sh/formula/)
- [SKHD Keywords](https://github.com/koekeishiya/skhd/issues/1)
- [Technical Note Remapping Keys](https://developer.apple.com/library/archive/technotes/tn2450/_index.html) Used in `keyboard.nix`
    - [Hex to Int](https://www.calculatormix.com/conversions/number/hex-to-int/) Used in `keyboard.nix`

# TODO
## Alfred
- [ ] Theme
- [ ] See if possible to configure and auto add workflows
## ZSH
- [ ] Keymaps 
## Yabai
- [ ] Optimize [Ideas](https://cbrgm.net/post/2021-05-5-setup-macos/)
## Sketchybar
- [ ] Finish Config [Examples](https://github.com/FelixKratz/SketchyBar/discussions/47)
## SKHD
- [ ] Keymaps [Ideas](https://github.com/shaunsingh/nix-darwin-dotfiles/blob/962bb43a30df858bafa1d14e47becdec6c31b779/users/shared/darwin/skhd.nix)
## Helix
- [ ] Keymaps Config 
## Kitty
- [ ] Keymaps
## NIX 
- [ ] Refactor configuration implement roles as seen [here](https://www.youtube.com/watch?v=K54KKAx2wNc&list=PL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-&index=8)
- [ ] Add other themes
    - [ ] [Catppuccin](https://github.com/catppuccin/base16)
    - [ ] [Tokyo Night](https://github.com/folke/tokyonight.nvim/tree/main/extras/kitty)
    - [ ] [Gruvbox](https://github.com/folke/tokyonight.nvim/tree/main/extras/kitty)
## MPV
- [ ] Setup MPV to work with youtube and Plex
## FZF
- [ ] Setup File Previews Shown [Here](https://github.com/Freed-Wu/fzf-tab-source/tree/main/sources)
## Firefox
- [ ] Create userChrome.css [Nix Examples](https://github.com/cmacrae/config/blob/b33ccb041861b56c97e1744b0fd8c606e343164c/modules/home.nix) [FF Module](https://github.com/nix-community/home-manager/blob/master/modules/programs/firefox.nix)
## Espanso
- [ ] Create Config [Example](https://espanso.org/docs/matches/forms/)
## Other
- [ ] Install certificates needed for work
- [ ] Ensure Garbage Collection Works
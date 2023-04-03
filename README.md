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
- [Helix Manual](https://docs.helix-editor.com/keymap.html#goto-mode)
## Repos
- [LnL7/nix-darwin](https://github.com/LnL7/nix-darwin)
- **[zmre/mac-nix-simple-example](https://github.com/zmre/mac-nix-simple-example)**
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
- [Setting up Nix on macOS from scratch (incl. dotfiles via home-manager and Nix flakes)](https://www.youtube.com/watch?v=1dzgVkgQ5mE)
- [Nix From Nothing #2 | Let's Learn #Nix & #NixOS!](https://www.youtube.com/watch?v=POUeOSjeJ1w)
- [Informal intro to the Nix language, derivations and nixpkgs](https://www.youtube.com/watch?v=9DJtHIpdp0Y)
- [Beginners Guide to Nix EP1: Flakes](https://www.youtube.com/watch?v=IrxCiNnXG4M)
- [Setting up nix-darwin home-manager and flakes on M1 Macbook Pro OSX Monterey 12.0.1](https://www.youtube.com/watch?v=KJgN0lnA5mk)
## Others
- [List of Resources](https://www.reddit.com/r/NixOS/comments/v2xpjm/big_list_of_flakes_tutorials/)
- [Brew Packages](https://formulae.brew.sh/formula/)
- [SKHD Keywords](https://github.com/koekeishiya/skhd/issues/1)
- [Technical Note Remapping Keys](https://developer.apple.com/library/archive/technotes/tn2450/_index.html) Used in `keyboard.nix`
    - [Hex to Int](https://www.calculatormix.com/conversions/number/hex-to-int/) Used in `keyboard.nix`
    - [hidutil generator](https://hidutil-generator.netlify.app/) Used in `keyboard.nix`
- [i3wm for ideas](https://i3wm.org/docs/userguide.html#_default_keybindings)
- [Nix User Repository NUR](https://nur.nix-community.org/repos/alwinb/)

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
- [x] Add Topmost Toggle
- [x] Add Sticky Toggle
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
- [ ] Template userChrome to theme
- [ ] Additional Configuration
- [ ] Delete Old Profiles
- [x] Create userChrome.css ~~[Nix Examples](https://github.com/cmacrae/config/blob/b33ccb041861b56c97e1744b0fd8c606e343164c/modules/home.nix)~~ [FF Module](https://github.com/nix-community/home-manager/blob/master/modules/programs/firefox.nix) [Create Dummy Package](https://github.com/cmacrae/config/blob/53f2498a74b0ad258bc0af80800a67d37d0fffdc/modules/macintosh.nix)
## Espanso
- [ ] Create Config [Example](https://espanso.org/docs/matches/forms/)
## Pueue
- [ ] Configure and run at a start
## Other
- [ ] Install certificates needed for work
- [ ] Ensure Garbage Collection Works

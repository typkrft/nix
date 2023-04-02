{ pkgs, themes, ... }: {
  home.file."kitty.conf" = {
    enable = true;
    target = ".config/kitty/kitty.conf";
    text = ''
      include current-theme.conf
      include kitty-keymap.conf

      scrollback_lines        10000
      tab_bar_edge            bottom
      macos_colorspace        displayp3
      shell_integration       enabled
      hide_window_decorations titlebar-only
      focus_follows_mouse     yes
      mouse_hide_wait         -1
      copy_on_select          yes
      bell_on_tab             " "
      window_padding_width    0 4 0 4
      
      font_size               18
      font_family             Iosevka Nerd Font
      symbol_map              U+23FB-U+23FE,U+2665,U+26A1,U+2B58,U+E000-U+E00A,U+E0A0-U+E0A3,U+E0B0-U+E0C8,U+E0CA,U+E0CC-U+E0D2,U+E0D4,U+E200-U+E2A9,U+E300-U+E3E3,U+E5FA-U+E62F,U+E700-U+E7C5,U+F000-U+F2E0,U+F300-U+F31C,U+F400-U+F4A9,U+F500-U+F8FF Symbols Nerd Font
    '';
  };

  home.file."current-theme.conf" = {
    enable = true;
    target = ".config/kitty/current-theme.conf";
    text = ''
    foreground              #${themes.dracula.hex.foreground}
    background              #${themes.dracula.hex.background}
    selection_foreground    #${themes.colors.hex.white}
    selection_background    #${themes.dracula.hex.selection}
    url_color               #${themes.dracula.hex.cyan}
    cursor                  #${themes.dracula.hex.foreground}
    cursor_text_color       #${themes.dracula.hex.background}
    active_tab_foreground   #${themes.dracula.hex.background}
    active_tab_background   #${themes.dracula.hex.foreground}
    inactive_tab_foreground #${themes.dracula.hex.foreground}
    inactive_tab_background #${themes.dracula.hex.comment}
    active_border_color     #${themes.dracula.hex.green}
    inactive_border_color   #${themes.dracula.hex.selection}
    mark1_foreground        #${themes.dracula.hex.background}
    mark1_background        #${themes.dracula.hex.red}
    color0                  #${themes.dracula.hex.color0}
    color1                  #${themes.dracula.hex.color1}
    color2                  #${themes.dracula.hex.color2}
    color3                  #${themes.dracula.hex.color3}
    color4                  #${themes.dracula.hex.color4}
    color5                  #${themes.dracula.hex.color5}
    color6                  #${themes.dracula.hex.color6}
    color7                  #${themes.dracula.hex.color7}
    color8                  #${themes.dracula.hex.color8}
    color9                  #${themes.dracula.hex.color9}
    color10                 #${themes.dracula.hex.color10}
    color11                 #${themes.dracula.hex.color11}
    color12                 #${themes.dracula.hex.color12}
    color13                 #${themes.dracula.hex.color13}
    color14                 #${themes.dracula.hex.color14}
    color15                 #${themes.dracula.hex.color15}
    '';
  };
  
  home.file."kitty-keymap.conf" = {
    enable = true;
    target = ".config/kitty/kitty-keymap.conf";
    text = ''
    '';
  };
}

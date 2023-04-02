{ pkgs, themes, ...}: {
  home.file."Xresources" = {
    enable = true;
    target = ".Xresources";
    text = ''
      *.foreground: #${themes.dracula.hex.foreground}
      *.background: #${themes.dracula.hex.background}
      *.color0:     #${themes.dracula.hex.color0}
      *.color1:     #${themes.dracula.hex.color1}
      *.color2:     #${themes.dracula.hex.color2}
      *.color3:     #${themes.dracula.hex.color3}
      *.color4:     #${themes.dracula.hex.color4}
      *.color5:     #${themes.dracula.hex.color5}
      *.color6:     #${themes.dracula.hex.color6}
      *.color7:     #${themes.dracula.hex.color7}
      *.color8:     #${themes.dracula.hex.color8}
      *.color9:     #${themes.dracula.hex.color9}
      *.color10:    #${themes.dracula.hex.color10}
      *.color11:    #${themes.dracula.hex.color11}
      *.color12:    #${themes.dracula.hex.color12}
      *.color13:    #${themes.dracula.hex.color13}
      *.color14:    #${themes.dracula.hex.color14}
      *.color15:    #${themes.dracula.hex.color15}
    '';
  };
}
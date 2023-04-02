{ pkgs, themes, ... }: {
  home.file."sketchybarrc" = {
    enable = true;
    executable = true;
    target = ".config/sketchybar/sketchybarrc";
    text = ''
      #!/usr/bin/env bash
      config_dir="$HOME/.config/sketchybar/configs"
      sh $config_dir/sb_defaults

      # Left
      #sh $config_dir/modal
      #sh $config_dir/spaces
      #sh $config_dir/focus
      #sh $config_dir/stack

      # Right
      #sh $config_dir/battery
      #sh $config_dir/time
      #sh $config_dir/music
    '';
  };
  
  home.file."sb_defaults" = {
    enable = true;
    executable = true;
    target = ".config/sketchybar/configs/sb_defaults";
    text = ''
      sketchybar --bar                                       \
      position=top                                           \
      height=38                                              \
      color=0xFF${themes.colors.hex.black}                   \
      display=main                                           \
      corner_radius=0                                        \
      padding_left=0                                         \
      padding_right=16                                       \
                                                             \
      --default                                              \
      label.font="Iosevka Nerd Font:Regular:18.0"            \
      label.color="0xFF$text"                                \
      label.padding_left=0                                   \
      label.padding_right=0                                  \
                                                             \
      background.color="0xFF$background"                     \
      background.height=26                                   \
      background.padding_left=10                             \
      background.padding_right=10                            \
      background.corner_radius=4                             \
                                                             \
      icon.font="Iosevka Nerd Font:Regular:18.0"             \
      icon.color="0xFF$icon"                                 \
      icon.highlight_color="0xFF$highlight"                  \
      icon.padding_left=10                                   \
      icon.padding_right=10                                  \
                                                             \
      --add event yabai_window                               \
      --add event space_change                               
    '';
  };
}
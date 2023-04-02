{ ... }: {
    system.defaults = {
        dock = {
            autohide = true;
            minimize-to-application = true; 
            mru-spaces = false;
            show-recents = false;
            # Hot Corners
            wvous-tl-corner = 2; # Mission Control
            wvous-tr-corner = 12; # Notification Center
            wvous-bl-corner = 14; # Quick Note
            wvous-br-corner = 4; # Desktop
        };

        finder = {
            AppleShowAllExtensions = true;
            _FXShowPosixPathInTitle = true;
            CreateDesktop = false;
            FXDefaultSearchScope = "SCcf";
            FXEnableExtensionChangeWarning = false;
            FXPreferredViewStyle = "clmv";
        };

        ".GlobalPreferences"."com.apple.sound.beep.sound" = "/System/Library/Sounds/hero";

        screencapture = {
            disable-shadow = true;
            location = "~/Downloads";
        };

        NSGlobalDomain = {
            _HIHideMenuBar = true;
            "com.apple.swipescrolldirection" = true;
            AppleICUForce24HourTime = true;
            AppleInterfaceStyle = "Dark";
            AppleKeyboardUIMode = 3;
            AppleShowAllExtensions = true;
            AppleShowAllFiles = true;
            NSNavPanelExpandedStateForSaveMode = true;
            NSNavPanelExpandedStateForSaveMode2 = true; 
            "com.apple.trackpad.scaling" = 2.4;
        };


    };
}
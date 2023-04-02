{ pkgs, themes, ... }: {
    environment = {
        shells = [
            pkgs.bash
            pkgs.zsh
        ];
        loginShell = pkgs.zsh;
    };

    programs.zsh = {
        enable = true;
        # enableSyntaxHighlighting = true;
        # enableFzfCompletion = true;
        # enableFzfHistory = true;
        
    };
    
    # Touch ID for sudo auth
    security.pam.enableSudoTouchIdAuth = true;
}
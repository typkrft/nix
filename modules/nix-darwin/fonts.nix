{ pkgs, ... }: {

    fonts.fontDir.enable = true;

    fonts.fonts = [
        ( pkgs.nerdfonts.override {
            fonts = [
                "VictorMono" 
                "IBMPlexMono" 
                "Iosevka" 
                "NerdFontsSymbolsOnly" 
                "Mononoki"
                "FantasqueSansMono"
            ];
        })
    ];
}
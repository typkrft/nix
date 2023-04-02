{ pkgs, themes, ... }: {
  programs.firefox.profiles."nix" = {
    enable = true;
    name = "ff-nix";
    isDefault = true;
    id = 1;
    path = "~/.config/firefox";
    userChrome = ''
      /*==============================================================================================*

        +-----+-----+-----+-----+-----+-----+-----+
        | █▀▀ | ▄▀█ | █▀▀ | █▀▀ | ▄▀█ | █▀▄ | █▀▀ |
        | █▄▄ | █▀█ | ▄▄█ | █▄▄ | █▀█ | █▄▀ | ██▄ |
        +-----+-----+-----+-----+-----+-----+-----+


        Description:    Minimalist, Simple, Keyboard Centered and based on SimpleFox. 🦊
                        What you get is a really simple responsive one-line layout using the new Proton UI.

                        > SimpleFox: https://github.com/migueravila/SimpleFox


        Author:         Andreas Grafen
                        (https://andreas.grafen.info)


        Repository:     https://github.com/andreasgrafen/ag.proton


                        Thank you Nick, Abdallah and Benyamin for all the great suggestions for improvements! ♡
                        Nick:     https://github.com/nicksundermeyer)
                        Abdallah: https://github.com/HeiWiper)
                        Benyamin: https://github.com/benyaminl)

                        If you're looking for a **mouse-friendly** clone please check out Waterfall.
                        https://github.com/crambaud/waterfall

      *==============================================================================================*/





      /*---+---+---+---+---+---+
      | C | O | N | F | I | G |
      +---+---+---+---+---+---*/

      /* Feel free to tweak the following
      * config settingsto your own liking. */


          /*---+---+---+---+---+---+---+
          | C | O | L | O | U | R | S |
          +---+---+---+---+---+---+---*/

          /* Comment this block out if you want to keep the default theme colour. */
          /* This will also work with custom colours from color.firefox.com. */


          @media (prefers-color-scheme: dark) { :root {

              /* --window-colour:                     #1E2021; */
              /* --secondary-colour:                  #191B1C; */
              /* --inverted-colour:                   #FAFAFC; */

              /* Containter Tab Colours */
              /* --uc-identity-color-blue:            #7ED6DF; */
              /* --uc-identity-color-turquoise:       #55E6C1; */
              /* --uc-identity-color-green:           #B8E994; */
              /* --uc-identity-color-yellow:          #F7D794; */
              /* --uc-identity-color-orange:          #F19066; */
              /* --uc-identity-color-red:             #FC5C65; */
              /* --uc-identity-color-pink:            #F78FB3; */
              /* --uc-identity-color-purple:          #786FA6; */

              /* --uc-identity-color-blue-muted:      #7ED6DF99; */
              /* --uc-identity-color-turquoise-muted: #55E6C199; */
              /* --uc-identity-color-green-muted:     #B8E99499; */
              /* --uc-identity-color-yellow-muted:    #F7D794CC; */
              /* --uc-identity-color-orange-muted:    #F19066FF; */
              /* --uc-identity-color-red-muted:       #FC5C65FF; */
              /* --uc-identity-color-pink-muted:      #F78FB399; */
              /* --uc-identity-color-purple-muted:    #786FA6FF; */

          }}



          @media (prefers-color-scheme: light) { :root {

              /* --window-colour:                     #FAFAFC; */
              /* --secondary-colour:                  #EAEAEC; */
              /* --inverted-colour:                   #1E2021; */
              
              /* /* Containter Tab Colours */ */
              /* --uc-identity-color-blue:            #1D65F5; */
              /* --uc-identity-color-turquoise:       #209FB5; */
              /* --uc-identity-color-green:           #40A02B; */
              /* --uc-identity-color-yellow:          #E49320; */
              /* --uc-identity-color-orange:          #FE640B; */
              /* --uc-identity-color-red:             #FC5C65; */
              /* --uc-identity-color-pink:            #EC83D0; */
              /* --uc-identity-color-purple:          #822FEE; */

              /* --uc-identity-color-blue-muted:      #1D65F5FF; */
              /* --uc-identity-color-turquoise-muted: #209FB5FF; */
              /* --uc-identity-color-green-muted:     #40A02BFF; */
              /* --uc-identity-color-yellow-muted:    #E49320FF; */
              /* --uc-identity-color-orange-muted:    #FE640BFF; */
              /* --uc-identity-color-red-muted:       #FC5C65FF; */
              /* --uc-identity-color-pink-muted:      #EC83D0FF; */
              /* --uc-identity-color-purple-muted:    #822FEEFF; */

          }}



      :root {

          /* URL colour in URL bar suggestions */
          --urlbar-popup-url-color: var(--uc-identity-color-purple) !important;


          /*---+---+---+---+---+---+---+
          | V | I | S | U | A | L | S |
          +---+---+---+---+---+---+---*/

          /* global border radius */
          --uc-border-radius: 0;

          /* dynamic url bar width settings */
          --uc-urlbar-width: clamp(200px, 40vw, 500px);

          /* dynamic tab width settings */
          --uc-active-tab-width:   clamp(100px, 20vw, 300px);
          --uc-inactive-tab-width: clamp( 50px, 15vw, 200px);

          /* if active always shows the tab close button */
          --show-tab-close-button: none; /* DEFAULT: -moz-inline-box; */

          /* if active only shows the tab close button on hover*/
          --show-tab-close-button-hover: none; /* DEFAULT: -moz-inline-box; */

          /* adds left and right margin to the container-tabs indicator */
          --container-tabs-indicator-margin: 10px;

      }

          /*---+---+---+---+---+---+---+
          | B | U | T | T | O | N | S |
          +---+---+---+---+---+---+---*/

          #back-button,
          #forward-button { display: none !important; }

          /* bookmark icon */
          #star-button{ display: none !important; }

          /* zoom indicator */
          #urlbar-zoom-button { display: none !important; }

          /* Make button small as Possible, hidden out of sight */
          #PanelUI-button { margin-top: -5px; margin-bottom: 44px; }

          /* #PanelUI-menu-button { */

          /*    padding: 0px !important; */
          /*    max-height: 1px; */

          /*    list-style-image: none !important; */

          /* } */

          #PanelUI-menu-button .toolbarbutton-icon { width: 1px !important; }
          #PanelUI-menu-button .toolbarbutton-badge-stack { padding: 0px !important; }

          #reader-mode-button{ display: none !important; }

          /* tracking protection shield icon */
          #tracking-protection-icon-container { display: none !important; }

          /* #identity-box { display: none !important } /* hides encryption AND permission items */
          #identity-permission-box { display: none !important; } /* only hides permission items */

          /* e.g. playing indicator (secondary - not icon) */
          .tab-secondary-label { display: none !important; }

          #pageActionButton { display: none !important; }
          #page-action-buttons { display: none !important; }

          #urlbar-go-button { display: none !important; }





      /*=============================================================================================*/


      /*---+---+---+---+---+---+
      | L | A | Y | O | U | T |
      +---+---+---+---+---+---*/

      /* No need to change anything below this comment.
      * Just tweak it if you want to tweak the overall layout. c: */

      :root {

          --uc-theme-colour:                          var(--window-colour,    var(--toolbar-bgcolor));
          --uc-hover-colour:                          var(--secondary-colour, rgba(0, 0, 0, 0.2));
          --uc-inverted-colour:                       var(--inverted-colour,  var(--toolbar-color));

          --button-bgcolor:                           var(--uc-theme-colour)    !important;
          --button-hover-bgcolor:                     var(--uc-hover-colour)    !important;
          --button-active-bgcolor:                    var(--uc-hover-colour)    !important;

          --toolbarbutton-border-radius:              var(--uc-border-radius)   !important;

          --tab-border-radius:                        var(--uc-border-radius)   !important;
          --lwt-text-color:                           var(--uc-inverted-colour) !important;
          --lwt-tab-text:                             var(--uc-inverted-colour) !important;

          --arrowpanel-border-radius:                 var(--uc-border-radius)   !important;

          --tab-block-margin: 2px !important;

      }





      window,
      #main-window,
      #toolbar-menubar,
      #TabsToolbar,
      #PersonalToolbar,
      #navigator-toolbox,
      #sidebar-box,
      #nav-bar {

          -moz-appearance: none !important;

          border: none !important;
          box-shadow: none !important;
          background: var(--uc-theme-colour) !important;

      }





      /* grey out ccons inside the toolbar to make it
      * more aligned with the Black & White colour look */
      #PersonalToolbar toolbarbutton:not(:hover),
      #bookmarks-toolbar-button:not(:hover) { filter: grayscale(1) !important; }


      /* remove window control buttons */
      .titlebar-buttonbox-container { display: none !important; }


      /* remove "padding" left and right from tabs */
      .titlebar-spacer { display: none !important; }





      /* remove gap after pinned tabs */
      #tabbrowser-tabs[haspinnedtabs]:not([positionpinnedtabs])
          > #tabbrowser-arrowscrollbox
          > .tabbrowser-tab[first-visible-unpinned-tab] { margin-inline-start: 0 !important; }


      /* remove tab shadow */
      .tabbrowser-tab
          >.tab-stack
          > .tab-background { box-shadow: none !important;  }


      /* tab background */
      .tabbrowser-tab
          > .tab-stack
          > .tab-background { background: var(--uc-theme-colour) !important; }


      /* active tab background */
      .tabbrowser-tab[selected]
          > .tab-stack
          > .tab-background { background: var(--uc-hover-colour) !important; }


      /* multi tab selection */
      #tabbrowser-tabs:not([noshadowfortests]) .tabbrowser-tab:is([visuallyselected=true], [multiselected]) > .tab-stack > .tab-background:-moz-lwtheme { background: var(--uc-hover-colour) !important; }


      /* tab close button options */
      .tabbrowser-tab:not([pinned]) .tab-close-button { display: var(--show-tab-close-button) !important; }
      .tabbrowser-tab:not([pinned]):hover .tab-close-button { display: var(--show-tab-close-button-hover) !important }


      /* adaptive tab width */
      .tabbrowser-tab[selected][fadein]:not([pinned]) { max-width: var(--uc-active-tab-width) !important; }
      .tabbrowser-tab[fadein]:not([selected]):not([pinned]) { max-width: var(--uc-inactive-tab-width) !important; }


      /* container tabs indicator */
      .tabbrowser-tab[usercontextid]
          > .tab-stack
          > .tab-background
          > .tab-context-line {

              margin: -1px var(--container-tabs-indicator-margin) 0 var(--container-tabs-indicator-margin) !important;
              height: 1px !important;

              border-radius: var(--tab-border-radius) !important;
              box-shadow: 0 1px 10px 1px var(--uc-identity-gradient-color) !important;

      }


      /* show favicon when media is playing but tab is hovered */
      .tab-icon-image:not([pinned]) { opacity: 1 !important; }


      /* Makes the speaker icon to always appear if the tab is playing (not only on hover) */
      .tab-icon-overlay:not([crashed]),
      .tab-icon-overlay[pinned][crashed][selected] {

        top: 5px !important;
        z-index: 1 !important;

        padding: 1.5px !important;
        inset-inline-end: -8px !important;
        width: 16px !important; height: 16px !important;

        border-radius: 10px !important;

      }


      /* style and position speaker icon */
      .tab-icon-overlay:not([sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) {

        stroke: transparent !important;
        background: transparent !important;
        opacity: 1 !important; fill-opacity: 0.8 !important;

        color: currentColor !important;

        stroke: var(--uc-theme-colour) !important;
        background-color: var(--uc-theme-colour) !important;

      }


      /* change the colours of the speaker icon on active tab to match tab colours */
      .tabbrowser-tab[selected] .tab-icon-overlay:not([sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) {

        stroke: var(--uc-hover-colour) !important;
        background-color: var(--uc-hover-colour) !important;

      }


      .tab-icon-overlay:not([pinned], [sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) { margin-inline-end: 9.5px !important; }


      .tabbrowser-tab:not([image]) .tab-icon-overlay:not([pinned], [sharing], [crashed]) {

        top: 0 !important;

        padding: 0 !important;
        margin-inline-end: 5.5px !important;
        inset-inline-end: 0 !important;

      }


      .tab-icon-overlay:not([crashed])[soundplaying]:hover,
      .tab-icon-overlay:not([crashed])[muted]:hover,
      .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover {

          color: currentColor !important;
          stroke: var(--uc-inverted-colour) !important;
          background-color: var(--uc-inverted-colour) !important;
          fill-opacity: 0.95 !important;

      }


      .tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[soundplaying]:hover,
      .tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[muted]:hover,
      .tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover {

          color: currentColor !important;
          stroke: var(--uc-inverted-colour) !important;
          background-color: var(--uc-inverted-colour) !important;
          fill-opacity: 0.95 !important;

      }


      /* speaker icon colour fix */
      #TabsToolbar .tab-icon-overlay:not([crashed])[soundplaying],
      #TabsToolbar .tab-icon-overlay:not([crashed])[muted],
      #TabsToolbar .tab-icon-overlay:not([crashed])[activemedia-blocked] { color: var(--uc-inverted-colour) !important; }


      /* speaker icon colour fix on hover */
      #TabsToolbar .tab-icon-overlay:not([crashed])[soundplaying]:hover,
      #TabsToolbar .tab-icon-overlay:not([crashed])[muted]:hover,
      #TabsToolbar .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover { color: var(--uc-theme-colour) !important; }





      #nav-bar {

          border:     none !important;
          box-shadow: none !important;
          background: transparent !important;

      }


      /* remove border below whole nav */
      #navigator-toolbox { border-bottom: none !important; }


      #urlbar,
      #urlbar * {

          outline: none !important;
          box-shadow: none !important;

      }


      #urlbar-background { border: var(--uc-hover-colour) !important; }


      #urlbar[focused="true"]
          > #urlbar-background,
      #urlbar:not([open])
          > #urlbar-background { background: transparent !important; }


      #urlbar[open]
          > #urlbar-background { background: var(--uc-theme-colour) !important; }


      .urlbarView-row:hover
          > .urlbarView-row-inner,
      .urlbarView-row[selected]
          > .urlbarView-row-inner { background: var(--uc-hover-colour) !important; }





      /* transition to oneline */
      @media (min-width: 1000px) {


          /* move tabs bar over */
          #TabsToolbar { margin-left: var(--uc-urlbar-width) !important; }


          /* move entire nav bar  */
          #nav-bar { margin: calc((var(--urlbar-min-height) * -1) - 8px) calc(100vw - var(--uc-urlbar-width)) 0 0 !important; }


      } /* end media query */





      /* Container Tabs */
      .identity-color-blue      { --identity-tab-color: var(--uc-identity-color-blue)      !important; --identity-icon-color: var(--uc-identity-color-blue)      !important; --uc-identity-gradient-color: var(--uc-identity-color-blue-muted) !important; }
      .identity-color-turquoise { --identity-tab-color: var(--uc-identity-color-turquoise) !important; --identity-icon-color: var(--uc-identity-color-turquoise) !important; --uc-identity-gradient-color: var(--uc-identity-color-turquoise-muted) !important;  }
      .identity-color-green     { --identity-tab-color: var(--uc-identity-color-green)     !important; --identity-icon-color: var(--uc-identity-color-green)     !important; --uc-identity-gradient-color: var(--uc-identity-color-green-muted) !important;  }
      .identity-color-yellow    { --identity-tab-color: var(--uc-identity-color-yellow)    !important; --identity-icon-color: var(--uc-identity-color-yellow)    !important; --uc-identity-gradient-color: var(--uc-identity-color-yellow-muted) !important;  }
      .identity-color-orange    { --identity-tab-color: var(--uc-identity-color-orange)    !important; --identity-icon-color: var(--uc-identity-color-orange)    !important; --uc-identity-gradient-color: var(--uc-identity-color-orange-muted) !important;  }
      .identity-color-red       { --identity-tab-color: var(--uc-identity-color-red)       !important; --identity-icon-color: var(--uc-identity-color-red)       !important; --uc-identity-gradient-color: var(--uc-identity-color-red-muted) !important;  }
      .identity-color-pink      { --identity-tab-color: var(--uc-identity-color-pink)      !important; --identity-icon-color: var(--uc-identity-color-pink)      !important; --uc-identity-gradient-color: var(--uc-identity-color-pink-muted) !important;  }
      .identity-color-purple    { --identity-tab-color: var(--uc-identity-color-purple)    !important; --identity-icon-color: var(--uc-identity-color-purple)    !important; --uc-identity-gradient-color: var(--uc-identity-color-purple-muted) !important;  }


    '';
  };
}
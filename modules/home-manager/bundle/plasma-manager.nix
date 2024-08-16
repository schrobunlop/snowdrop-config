{ inputs, ... }: {
  imports = [ inputs.plasma-manager.homeManagerModules.plasma-manager ];

  programs.plasma = {
    enable = true;
    panels = [
      {
        location = "top";
        floating = true;
        height = 26;
        widgets = [
          {
            kickoff = {
              icon = "nix-snowflake-white";
              sortAlphabetically = true;
            };
          }
          "org.kde.plasma.panelspacer"
          {
            digitalClock = {
              date = {
                format.custom = "ddd, MMM dd • yyyy-MM-dd •";
                position = "besideTime";
              };
            };
          }
          "org.kde.plasma.panelspacer"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.showdesktop"
        ];
      }
      {
        location = "bottom";
        lengthMode = "fit";
        hiding = "autohide";
        floating = true;
        widgets = [
          {
            iconTasks = {
              launchers = [
                "applications:mullvad-vpn.desktop"
                "applications:kitty.desktop"
                "preferred://browser"
                "applications:org.kde.dolphin.desktop"
              ];
            };
          }
        ];
      }
    ];
    input.keyboard.numlockOnStartup = "on";
    kscreenlocker = {
      lockOnResume = true;
      timeout = 10;
    };
  };
}

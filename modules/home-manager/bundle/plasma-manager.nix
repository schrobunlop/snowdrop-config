{ inputs, ... }: {
  imports = [ inputs.plasma-manager.homeManagerModules.plasma-manager ];

  programs.plasma = {
    enable = true;
    input.keyboard.numlockOnStartup = "on";
    kscreenlocker = {
      lockOnResume = true;
      timeout = 10;
    };
  };
}

{ lib, ... }: {
  programs.kitty = lib.mkForce {
    enable = true;
    font.name = "FiraCode Nerd Font";
    settings = {
      confirm_os_window_close = 0;
    };
  };
}

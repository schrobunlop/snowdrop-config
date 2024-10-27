{
  services.displayManager = {
    autoLogin = {
      enable = true;
      user = "user";
    };
    sddm = {
      enable = true;
      wayland.enable = true;
    };
  };
}

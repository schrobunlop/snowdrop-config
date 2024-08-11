{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
    excludePackages = [ pkgs.xterm ];
  };
}

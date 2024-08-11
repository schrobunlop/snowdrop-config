{ pkgs, ... }: {
  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    ark
    elisa
    gwenview
    kate
    khelpcenter
    konsole
    okular
  ];
}

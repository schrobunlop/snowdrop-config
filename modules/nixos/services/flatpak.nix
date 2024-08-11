{ inputs, ... }: {
  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

  services.flatpak = {
    enable = true;
    packages = [
      "com.obsproject.Studio"
      "io.github.peazip.PeaZip"
      "org.keepassxc.KeePassXC"
      "org.mozilla.firefox"
      "org.prismlauncher.PrismLauncher"
    ];
    update.onActivation = true;
    overrides = {
      # In the Prism Launcher settings window, under Launcher, direct the Instances folder to the following path:
      "org.prismlauncher.PrismLauncher".Context.filesystems = [ "/mnt/game/minecraft" ];
    };
  };
}

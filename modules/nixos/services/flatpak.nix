{ inputs, ... }: {
  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

  services.flatpak = {
    enable = true;
    packages = [
      "com.beavernotes.beavernotes"
      "com.dec05eba.gpu_screen_recorder"
      "com.interversehq.qView"
      "com.obsproject.Studio"
      "dev.vencord.Vesktop"
      "io.freetubeapp.FreeTube"
      "io.github.peazip.PeaZip"
      "org.kde.krita"
      "org.keepassxc.KeePassXC"
      "org.mozilla.Thunderbird"
      "org.onlyoffice.desktopeditors"
      "org.prismlauncher.PrismLauncher"
      "org.shotcut.Shotcut"
      "org.strawberrymusicplayer.strawberry"
      "org.tenacityaudio.Tenacity"
    ];
    uninstallUnmanaged = true;
    update.onActivation = true;
    overrides = {
      # In the Prism Launcher settings window, under Launcher, direct the Instances folder to the following path:
      "org.prismlauncher.PrismLauncher".Context.filesystems = [ "/mnt/game/minecraft" ];
    };
  };
}

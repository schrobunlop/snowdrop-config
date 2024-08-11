{ inputs, ... }: {
  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

  services.flatpak = {
    enable = true;
    packages = [
      "com.obsproject.Studio"
      "io.github.peazip.PeaZip"
      "org.keepassxc.KeePassXC"
      "org.mozilla.firefox"
    ];
    update.onActivation = true;
  };
}

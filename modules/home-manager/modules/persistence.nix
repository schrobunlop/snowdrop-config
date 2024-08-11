{ inputs, ... }: {
  imports = [ inputs.impermanence.nixosModules.home-manager.impermanence ];

  home.persistence."/persist/home/user" = {
    directories = [
      "Documents"
      "Music"
      "Pictures"
      "Videos"
      ".local/share/dolphin"
      ".local/share/flatpak"
      ".local/share/kwalletd"
      ".local/share/kxmlgui5"
      ".var/app"
    ];
    files = [
      ".config/dolphinrc"
      ".config/sops/age/keys.txt"
      ".local/share/user-places.xbel"
    ];
    allowOther = true;
  };
}

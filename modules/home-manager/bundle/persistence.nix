{ inputs, ... }: {
  imports = [ inputs.impermanence.nixosModules.home-manager.impermanence ];

  home.persistence."/persist/home/user" = {
    directories = [
      "Documents"
      "Music"
      "Pictures"
      "Videos"
      ".config/kdeconnect"
      ".local/share/dolphin"
      ".local/share/flatpak"
      ".local/share/kwalletd"
      ".local/share/kxmlgui5"
      ".var/app"
      {
        directory = ".local/share/Steam";
        method = "symlink";
      }
    ];
    files = [
      ".config/dolphinrc"
      ".config/Mullvad VPN/gui_settings.json"
      ".config/sops/age/keys.txt"
      ".local/share/user-places.xbel"
    ];
    allowOther = true;
  };
}

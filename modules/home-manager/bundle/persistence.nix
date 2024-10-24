{ inputs, ... }: {
  imports = [ inputs.impermanence.nixosModules.home-manager.impermanence ];

  home.persistence."/persist/home/user" = {
    directories = [
      "Documents"
      "Music"
      "Pictures"
      "Videos"
      ".local/share/flatpak"
    ];
    files = [
      ".config/sops/age/keys.txt"
    ];
    allowOther = true;
  };
}

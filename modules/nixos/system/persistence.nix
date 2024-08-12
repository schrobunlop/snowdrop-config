{ inputs, ... }: {
  imports = [ inputs.impermanence.nixosModules.impermanence ];

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/etc/mullvad-vpn"
      "/etc/NetworkManager/system-connections"
      "/etc/nixos"
      "/var/lib/bluetooth"
      "/var/lib/flatpak"
      "/var/lib/nixos"
      "/var/lib/systemd/timers"
    ];
  };
}

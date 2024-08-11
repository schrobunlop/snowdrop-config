{ config, ... }: {
  users.users.user = {
    isNormalUser = true;
    hashedPasswordFile = config.sops.secrets.user-password.path;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
}

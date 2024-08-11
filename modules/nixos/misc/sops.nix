{ inputs, ... }: {
  imports = [ inputs.sops-nix.nixosModules.sops ];

  sops = {
    defaultSopsFile = ../../../other/secrets.yaml;
    age.keyFile = "/persist/home/user/.config/sops/age/keys.txt";
    secrets.user-password.neededForUsers = true;
  };
}

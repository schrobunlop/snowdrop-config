{ inputs, ... }: {
  imports = [
    inputs.disko.nixosModules.disko
    ./hardware-configuration.nix
    ../../disko/multi-dev-luks/disk-configuration.nix
    ../../modules/nixos/module-list.nix
  ];
}

{
  imports = [ ../../modules/home-manager/module-list.nix ];

  home = {
    username = "user";
    homeDirectory = "/home/user";
    # https://wiki.nixos.org/wiki/FAQ/When_do_I_update_stateVersion
    stateVersion = "24.05";
  };
}

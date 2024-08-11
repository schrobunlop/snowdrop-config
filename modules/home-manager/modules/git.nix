{
  programs.git = {
    enable = true;
    userName = "schrobunlop";
    userEmail = "123216939+schrobunlop@users.noreply.github.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}

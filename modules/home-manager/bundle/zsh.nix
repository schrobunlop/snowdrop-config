{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      nixos = "sudo nixos-rebuild";
      meta = "mat2 --no-sandbox -L";
    };
  };
}

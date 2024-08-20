{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      nixup = "sudo nixos-rebuild";
      meta = "mat2 --no-sandbox -L";
    };
  };
}

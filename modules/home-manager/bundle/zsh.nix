{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      nixup = "sudo nixos-rebuild";
      exif = "mat2 --no-sandbox -L";
    };
  };
}

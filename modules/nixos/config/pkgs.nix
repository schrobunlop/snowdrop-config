{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    git
    kitty
    mat2
  ];
}

{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    git
    godot_4
    kitty
    mat2
  ];
}

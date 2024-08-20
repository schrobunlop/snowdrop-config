{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    (blender.override { cudaSupport = true; })
    git
    godot_4
    kitty
    mat2
  ];
}

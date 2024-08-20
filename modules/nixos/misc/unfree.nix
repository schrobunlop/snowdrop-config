{ lib, ... }: {
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "blender"
    "cuda_cccl"
    "cuda_cudart"
    "cuda_nvcc"
    "nvidia-x11"
    "nvidia-settings"
    "nvidia-persistenced"
    "steam"
    "steam-original"
    "steam-run"
  ];
}

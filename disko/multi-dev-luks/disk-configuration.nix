{
  disko.devices = {
    disk = {
      disk0 = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              type = "EF00";
              start = "1MiB";
              end = "512MiB";
              content = {
                type = "filesystem";
                format = "vfat";
                extraArgs = [ "-n boot" ];
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };
            luks = {
              size = "100%";
              content = {
                type = "luks";
                name = "crypted";
                content = {
                  type = "lvm_pv";
                  vg = "root_vg";
                };
              };
            };
          };
        };
      };
      disk1 = {
        type = "disk";
        device = "/dev/nvme1n1";
        content = {
          type = "gpt";
          partitions = {
            luks = {
              size = "100%";
              content = {
                type = "luks";
                name = "datacrypt";
                content = {
                  type = "filesystem";
                  format = "btrfs";
                  extraArgs = [ "-L data" ];
                  mountpoint = "/mnt/data";
                };
              };
            };
          };
        };
      };
      disk2 = {
        type = "disk";
        device = "/dev/nvme2n1";
        content = {
          type = "gpt";
          partitions = {
            luks = {
              size = "100%";
              content = {
                type = "luks";
                name = "gamecrypt";
                content = {
                  type = "filesystem";
                  format = "btrfs";
                  extraArgs = [ "-L game" ];
                  mountpoint = "/mnt/game";
                };
              };
            };
          };
        };
      };
    };
    lvm_vg = {
      root_vg = {
        type = "lvm_vg";
        lvs = {
          root = {
            size = "100%FREE";
            content = {
              type = "btrfs";
              extraArgs = [ "-L" "root" "-f" ];
              subvolumes = {
                "/root" = {
                  mountpoint = "/";
                  mountOptions = [ "subvol=root" "compress=zstd" "noatime" ];
                };
                "/persist" = {
                  mountpoint = "/persist";
                  mountOptions = [ "subvol=persist" "compress=zstd" "noatime" ];
                };
                "/nix" = {
                  mountpoint = "/nix";
                  mountOptions = [ "subvol=nix" "compress=zstd" "noatime" ];
                };
                "/log" = {
                  mountpoint = "/var/log";
                  mountOptions = [ "subvol=log" "compress=zstd" "noatime" ];
                };
              };
            };
          };
        };
      };
    };
  };
  fileSystems."/persist".neededForBoot = true;
  fileSystems."/var/log".neededForBoot = true;
}

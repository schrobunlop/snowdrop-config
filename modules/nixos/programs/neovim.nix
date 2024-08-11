{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    configure = {
      customRC = ''
        set number
        set relativenumber
        set autoindent
        set shiftwidth=2
        set softtabstop=2
        set expandtab
        set nowrap
        set clipboard=unnamedplus
      '';
    };
  };
}

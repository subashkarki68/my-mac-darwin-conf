{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # archives
    xz
    zstd

    # utils
    ripgrep
    yq-go

    # GNU variants, deliberately shadowing the BSD tools macOS ships
    gnused
    gnutar
    gawk
    gnupg

    # productivity
    zoxide
    tmux
  ];

  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    nix-index = {
      enable = true;
      enableZshIntegration = true;
    };

    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };

    eza = {
      enable = true;
      git = true;
      icons = "auto";
      enableZshIntegration = true;
    };

    yazi = {
      enable = true;
      enableZshIntegration = true;
      shellWrapperName = "yy";
      settings = {
        manager = {
          show_hidden = true;
          sort_dir_first = true;
        };
      };
    };

    tmux = {
      enable = true;
      extraConfig = ''
        set -g mouse on
        bind r source-file ~/.tmux.conf \; display-message "Config reloaded!"
        setw -g mode-keys vi
      '';
    };
  };

  xdg = {
    enable = true;
  };
}

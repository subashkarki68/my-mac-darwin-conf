{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    git
    gh
    jq
    fd

    curl
    wget
    tree
    nerd-fonts.hack
    roboto
    noto-fonts
    noto-fonts-color-emoji
  ];
  environment.variables.EDITOR = "nvim";

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    masApps = {};

    taps = [];

    brews = [
      "biome"
      "go"
      "ffmpeg"
      "speedtest-cli"
      "yt-dlp"
      "git-extras"
      "btop"
    ];

    casks = [
      "firefox"
      "bitwarden"
      "claude"
      "localsend"
      "ghostty"
      "pearcleaner"
      "mac-mouse-fix"
      "obsidian"
      "raindropio"
      "visual-studio-code"
      "dbeaver-community"
      "bruno"
      "iina"
      "raycast"
      "stats"
      "docker-desktop"
    ];
  };
}

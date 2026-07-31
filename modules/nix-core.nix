{pkgs, ...}: {
  # enable flakes globally
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nix.package = pkgs.nix;

  # Disabled because of https://github.com/NixOS/nix/issues/7273
  nix.optimise.automatic = false;
}

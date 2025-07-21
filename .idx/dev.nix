# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstabl
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_18
    pkgs.python3
    pkgs.gcc
    pkgs.gnumake
    pkgs.git
  ];
  idx = {
    extensions = [ "ms-python.python" ];
    workspace = {};
	  previews = {
	    enable = false;
	  };
};
}

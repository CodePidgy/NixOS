{ pkgs, ... }: {
    nix.package = pkgs.nixVersions.latest;
	nix.settings.experimental-features = [ "nix-command" "flakes"  ];
}

{
    description = "Michal's nix-darwin system flake";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
        nix-darwin.url = "github:nix-darwin/nix-darwin/master";
        nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = inputs@{ self, nix-darwin, nixpkgs }:
        let
        configuration = { pkgs, config, ... }: {
            environment.systemPackages =
                [   
                    pkgs.alacritty
                    pkgs.mkalias
                    pkgs.neovim
                    pkgs.tmux
                    pkgs.go
                    pkgs.git
                    pkgs.lldb
                    pkgs.clang
                    pkgs.gcc
                    pkgs.nodejs
                    pkgs.postgresql
                    pkgs.llvm
                ];

            system.activationScripts.applications.text = let
                env = pkgs.buildEnv {
                    name = "system-applications";
                    paths = config.environment.systemPackages;
                    pathsToLink = "/Applications";
                };
            in
                pkgs.lib.mkForce ''
                echo "setting up /Applications..." >&2
                rm -rf /Applications/Nix\ Apps
                mkdir -p /Applications/Nix\ Apps
                find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
                while read -r src; do
                    app_name=$(basename "$src")
                        echo "copying $src" >&2
                        ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
                        done
                        '';

            nix.settings.experimental-features = "nix-command flakes";
            system.configurationRevision = self.rev or self.dirtyRev or null;
            system.stateVersion = 6;
            nixpkgs.hostPlatform = "aarch64-darwin";
        };
    in
    {
        darwinConfigurations."Michals-MacBook-Pro" = nix-darwin.lib.darwinSystem {
            modules = [ configuration ];
        };
    };
}

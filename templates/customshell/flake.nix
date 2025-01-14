rec {
  description = "Custom Shell Flake";

  #inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = with pkgs; [
          # Packages made available on the CLI
        ];

        shellHook = ''
          echo
          echo
          echo
          echo -e "\033[1;31mWelcome to the ${description} environment!"
        '';
      };
    };
}

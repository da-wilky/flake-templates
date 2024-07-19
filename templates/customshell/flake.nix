{
  description = "Custom Shell Flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

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

	#shellHook = ''
	#  echo "Custom Shell Flake"
	#'';
      };
    };
}

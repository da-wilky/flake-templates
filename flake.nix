{
  description = "A collection of my flake templates";

  outputs = { self, nixpkgs, ... }@inputs: {
    templates = {
      customshell = {
	path = ./templates/customshell;
	description = "Starting point for a custom shell flake with nixdir.";
      };
    };
  };
}

{ pkgs ? import <nixpkgs>{}}:
pkgs.mkShell {
	buildInputs = [
		pkgs.gcc
		pkgs.temurin-bin-8
	];
	shellHook = ''
	'';
}






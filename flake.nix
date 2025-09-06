{
  description = "Development environment for Rust, HTML and CSS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    rust-overlay.url = "github:oxalica/rust-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, rust-overlay, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            # Rust toolchain
            pkgs.rustc
            pkgs.cargo
            pkgs.rust-analyzer

            # HTML/CSS/JSON Language Servers
            pkgs.vscode-langservers-extracted

            # Web development tools
            pkgs.nodejs
            pkgs.nodePackages.prettier

            # Build tools and dependencies
            pkgs.pkg-config
            pkgs.openssl
            pkgs.git
            pkgs.zola
          ];
        };
      }
    );
}

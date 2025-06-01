{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      systemd
      setuptools
      pytest
    ]))
  ];
}

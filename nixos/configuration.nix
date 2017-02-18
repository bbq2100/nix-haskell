{ config, pkgs, ... }:

{
  imports = [ 
    ./hardware-configuration.nix 
    ./guest.nix
    ./users.nix
    ./vagrant.nix
  ];
  
  environment.systemPackages = with pkgs; [ 
    git
    nix-prefetch-git
    emacs24-nox
    ghc
    cabal-install
    cabal2nix
  ];


}

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
    ghc
    cabal2nix
    (haskellPackages.ghcWithPackages (self : [
       self.cabal-install
       self.happy
       self.alex
       self.ghc-mod
       self.hlint
       self.hindent
       self.stylish-haskell
       self.hasktags
     ]))
    (import ./emacs.nix { inherit pkgs; })
  ];


}

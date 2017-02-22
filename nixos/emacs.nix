{ pkgs ? import <nixpkgs> {} }:

let
  myEmacs = pkgs.emacs;
  emacsWithPackages = (pkgs.emacsPackagesNgGen myEmacs).emacsWithPackages;
in
  emacsWithPackages (epkgs: (with epkgs.melpaStablePackages; [
    magit          
    haskell-mode   
    hindent
    projectile
    flx-ido
  ]) ++ (with epkgs.melpaPackages; [
    undo-tree      
    company-ghc
  ]) ++ (with epkgs.elpaPackages; [
    beacon         
    nameless       
    company
  ]) ++ [
    pkgs.notmuch   
  ])
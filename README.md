# nix-haskell

![I dare you!](https://i.imgflip.com/1jvzp1.jpg)

What's this?
-----------
An automated NixOS-based Haskell environment, taking away the dwelled haskell-tool-chain-installation hassle.

How to use?
-----------

Build Vagrant Box
-------------------

Install [packer](http://packer.io) and [virtualbox](https://www.virtualbox.org)

```bash
packer build template.json
```

Add the box to Vagrant

```bash
vagrant box add nixos-16.09-x86_64 nixos-16.09-x86_64-virtualbox.box
```

Run Vagrant Image
----------------

```bash
vagrant plugin install vagrant-nixos
vagrant init nixos-16.09-x86_64
vagrant up
```

What is NixOS, anyway?
----------------------

[NixOS](http://nixos.org) is a linux distribution with a purely functional package manager.

Want to learn more about NixOS + Haskell?
-----------------------------------------
https://github.com/Gabriel439/haskell-nix

https://ocharles.org.uk/blog/posts/2014-02-04-how-i-develop-with-nixos.html

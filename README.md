# nix-haskell

![I dare you!](https://i.imgflip.com/1jvzp1.jpg)

What's this?
-----------
An automated NixOS-based Haskell environment, taking away the dwelled haskell-tool-chain-installation hassle.

How to use?
-----------

Build Vagrant Image
-------------------

First install [packer](http://packer.io) and [virtualbox](https://www.virtualbox.org/)

Then:

```bash
packer build template.json
```

The .box image is now ready to go. Install it into Vagrant via:

```bash
vagrant box add nixos-14.02-x86_64 nixos-14.02-x86_64-virtualbox.box
```

Run Vagrant Image
----------------

Vagrant does not have a nixos guest plugin by default, so you'll need to install [vagrant-nixos](http://github.com/oxdi/vagrant-nixos).

```bash
vagrant plugin install vagrant-nixos
vagrant init nixos-14.02-x86_64
vagrant up
```

What is NixOS, anyway?
----------------------

[NixOS](http://nixos.org) is a linux distribution with a purely functional package manager.

These scripts build .box images that can be used by [vagrant](http://vagrantup.com) with the [vagrant-nixos](http://github.com/oxdi/vagrant-nixos) plugin for development, and other images suitable for production.

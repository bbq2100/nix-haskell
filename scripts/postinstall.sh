#!/bin/sh

set -e
set -x

# Upgrade.
nixos-rebuild switch --upgrade

# Add package channel
nix-channel --add https://nixos.org/channels/nixos-16.09-small nixpkgs
nix-channel --update nixpkgs

# Cleanup any previous generations and delete old packa
nix-collect-garbage -d

# Clear history
unset HISTFILE
if [ -f /root/.bash_history ]; then
  rm /root/.bash_history
fi
if [ -f /home/vagrant/.bash_history ]; then
  rm /home/vagrant/.bash_history
fi

# Clear temporary folder
rm -rf /tmp/*
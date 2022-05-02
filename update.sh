#!/bin/bash

# rsync -cauv --delete --info=stats2 --exclude={"caur.files","*.files.tar*","caur.db","*.db.tar*"} /var/cache/pacman/caur/ /home/cretm/app/dev.ctlos.ru/ctlos-aur

# find './' -maxdepth 1 -type f -regex '.*\.\(zst\|xz\)' -exec gpg -b '{}' \;
# find './' -type f -exec gpg --pinentry-mode loopback --passphrase=${GPG_PASS} -b '{}' \;

# https://ctlos-ipfs.fission.app/

public=${PWD}/public
ctlos_repo=/media/files/github/ctlos/ctlos_repo/x86_64/
ctlos_aur=/media/files/github/ctlos/ctlos-aur/x86_64/
iso_src=/home/creio/ctlosiso/out/

_sync() {
  rsync -cauvCLP --delete-excluded --delete --exclude={"build",".git*",".*ignore"} $ctlos_repo $public/ctlos_repo
  rsync -cauvCLP --delete-excluded --delete --exclude={"build",".git*",".*ignore"} $ctlos_aur $public/ctlos-aur
  rsync -cauvCLP --delete-excluded --delete --exclude={"build",".git*",".*ignore"} $iso_src $public/iso
}

_sync

# filesystem-reader

This snap exists just to demonstrate how to use the system-backup interface

## download, build, install and use

```
# clone the repo
git clone git@github.com:dclane-code/filesystem-reader.git

# build the snap
cd filesystem-reader
snapcraft

# install the snap  (--dangerous because it's not signed by anything snapd trusts)
snap install filesystem-reader_0.1_amd64.snap --dangerous

# connect the system-backup interface
snap connect filesystem-reader:system-backup

# read any file on the system
filesystem-reader.fs-reader /etc/passwd
```

## how it works

system-backup makes the host filesystem available at `/var/lib/snapd/hostfs/`

this snap is a single script that prepends that path to the filename you give it passes it to `cat`

```
modified_filepath="/var/lib/snapd/hostfs/$1"
cat "$modified_filepath"
```

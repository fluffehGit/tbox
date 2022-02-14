# tbox - Torrent Daemon in a box

Run the below two commands:
- `curl --remote-name "https://raw.githubusercontent.com/fluffehGit/tbox/master/tbox-setup.sh"`
- `sudo /bin/bash ./tbox-setup.sh`

Optionally:
- mount a drive or symlink a location to `/root/Media` which is the Deluge torrent download folder
- edit `/root/.config/deluge/auth` and replace `user:password:auth-level` with the user/users you want to log into deluge and their respective authentication level
  - [more details on authentication levels](https://dev.deluge-torrent.org/wiki/UserGuide/Authentication)
---
### ToDo
- [X] write script to automate above steps
- [X] ~~make password passable through env Vars~~
  - not needed since password is stored in config file and passed via bind mount
- [X] ~~set up CI for repo~~
  - overkill

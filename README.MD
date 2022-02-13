# tbox - Torrent Daemon in a box
- mount or symlink your torrent destination location under `/root/Media`
- copy sample configuration files to `/root/.config/deluge`
  - [more details here](https://dev.deluge-torrent.org/wiki/UserGuide/Authentication)
- edit /root/.config/auth and replace user:password:auth-level
- run: `docker container run -d --name tbox -p 58846:58846 -v /root/.config/deluge:/root/.config/deluge -v /root/Media:/root/Media --restart unless-stopped fluffeh/tbox`
---
### ToDo
- [ ] write script to automate above steps
- ~~[ ] make password passable through env Vars~~
  - not needed since password is stored in config file and passed via bind mount
- [ ] set up CI for repo

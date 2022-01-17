# tbox - Torrent Daemon in a box
- mount or symlink your torrent destination location under `/root/Media`
- copy sample configuration files to `/root/.config/deluge`
- edit /root/.config
- run: `docker image build -t tbox`
- run: `docker container run -d --name tbox --volume /root/.config/deluge:/root/.config/deluge --volume /root/Media:/root/Media --restart unless-stopped tbox`
---
### ToDo
- [ ] write script to automate above steps
- [ ] make password passable through env Vars
- [ ] set up CI for repo

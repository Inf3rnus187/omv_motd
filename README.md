## Cool /etc/motd generator

Copy script to bindir

```bash
# cp -v motd_hello_gen /usr/bin/
```

Copy motd service and timer files to systemd service dir

```bash
# cp motd.service motd.timer /etc/systemd/system/
```

Enable timer

```bash
# systemctl enable motd.timer
```

![Alt text](/motd.png?raw=true "OpenMandriva /etc/motd")

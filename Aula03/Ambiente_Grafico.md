Máquina: testing
----------------

Procedimentos:
--------------

* **Like RedHat**
```bash
bash <<EOF
yum install epel-release glx-utils mesa-dri-drivers spice-vdagent xorg-x11-drivers xorg-x11-server-Xorg xorg-x11-utils xorg-x11-xinit xvattr xterm -y
yum install fluxbox -y
echo "exec /usr/bin/fluxbox" >> ~/.xinitrc
EOF
```

* Like Debian
```bash
apt install fluxbox xinit -y
```

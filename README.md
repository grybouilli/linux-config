# A GUIDE TO SETTING UP YOUR MACHINE

- The config file is the i3 config file to put at `~/.config/i3/config`.
- The xorg.conf is to enable control on screen brightness; put it at `/etc/X11/xorg.conf`, install xbacklight and you'll be good to go.
- Install xinput to check the touchpad id and change corresponding line in the i3 config file.
- Install Font Awesome 5.12 and 6.2 to have icons in i3bar.
- If greeter doesn't work : install possibly missing intel modules.
- Latex file is to be put at location given by `kpsewhich -var-value=TEXMFHOME`. Then run `texhash`.
- To enebale transparent background : install `compton` and put `compton.conf` file at `~/.config/compton.conf`

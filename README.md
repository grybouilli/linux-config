# A GUIDE TO SETTING UP YOUR MACHINE

The script in this repo does the following job:
- The config file is the i3 config file to put at `~/.config/i3/config`.
- Install `xinput` to check the touchpad id and change corresponding line in the i3 config file.
- Install Font Awesome 5.12 to have icons in i3bar.
- If greeter doesn't work : install possibly missing intel modules.
- Latex file is to be put at location given by `kpsewhich -var-value=TEXMFHOME`. Then run `texhash`.
- To enebale transparent background : install `compton` and put `compton.conf` file at `~/.config/compton.conf`
- For terminal customization : https://github.com/Gogh-Co/Gogh

# Elementary Full Icon Theme
A mega pack of icons for elementary OS Loki.

![alt tag](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img1.jpeg)

![alt tag](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img2.jpeg)

### Installation:

#### First Installation?

_Install Git if you don't already have it installed._
```bash
sudo apt install git
```

* Create icon folder in your /home:
```bash
mkdir ~/.icons
cd ~/.icons
```

* Clone the repository (or download files):
```bash
git clone https://github.com/btd1337/elementary-full-icon-theme
```

* Set theme:
```bash
gsettings set org.gnome.desktop.interface icon-theme "elementary-full-icon-theme"
```
#### Update?

```bash
cd ~/.icons/elementary-full-icon-theme
git pull
```

#### Uninstall?
```bash
gsettings set org.gnome.desktop.interface icon-theme "elementary"
rm -R ~/.icons/elementary-full-icon-theme
```

###### The project is starting now, help us improve it. Submit new icons!

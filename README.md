### Donate

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X85LVKF3HYPZL&lc=US&item_name=btd1337&item_number=elementary%2dicons&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted)

<p align="center">
  <img src="https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/logo.png"><br>
  <b>Urutau Icons</b><br><br>
  A package of icons that transforms the third-party icons with the elementary appearance.<br><br>
</p>

![First Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img1.jpeg)  

![Second Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img2.jpeg)

![Third Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img3.jpeg)

![Fourth Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img4.jpeg)  

---

# Installation:

## Requirements

 - elementary icon theme: https://github.com/elementary/icons 
 > Note 1: Already installed by default in elementary OS
 
 > Note 2: The symbol **$** means Normal user and **#** means Root user

## Installation on Ubuntu Based Distros

```
$ wget https://github.com/btd1337/urutau-icons/releases/download/latest/urutau-icons.deb
# dpkg -i urutau-icons.deb
```

---

## Installation in Other Distros

### First Installation?

Install Git if you don't already have it installed.

```
# apt install git
```

Clone the repository (or download files):  

```
# git clone https://github.com/btd1337/urutau-icons.git /usr/share/icons/urutau-icons
```

Set theme:  

```
$ gsettings set org.gnome.desktop.interface icon-theme "urutau-icons"
```

## Update?

```
$ cd /usr/share/icons/urutau-icons
# git pull
```

## Uninstall?

```
$ gsettings set org.gnome.desktop.interface icon-theme "elementary"
# rm -R /usr/share/icons/urutau-icons
```

## The project is starting now, help us improve it. Submit new icons!

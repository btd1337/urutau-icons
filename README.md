> Donate

[![Ko-fi](https://ko-fi.com/img/Kofi_Logo_Blue.svg)](ko-fi.com/btd1337)

<p align="center">
  <img src="https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/logo.png"><br>
  <b>Urutau Icons</b>
  <br><br>
  A icon pack that transforms the third-party icons with the elementary appearance.
  <br><br>
</p>

![First Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img1.jpeg)  

![Second Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img2.jpeg)

![Third Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img3.jpeg)

![Fourth Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img4.jpeg)  

---

# Table of Contents

- [Table of Contents](#table-of-contents)
  - [Language Selection](#language-selection)
  - [Installation](#installation)
    - [Requirements](#requirements)
    - [Installation on Ubuntu Based Distros](#installation-ubuntu-based-distros)
    - [Installation in Other Distros](#installation-other-distros)
      - [First Installation?](#first-installation)
      - [Update?](#first-installation)
  - [Uninstall](#uninstall)

# Language Selection

[:gb: English](https://github.com/btd1337/urutau-icons/tree/master/README.md)

[🇵🇹 Portuguese](https://github.com/btd1337/urutau-icons/tree/master/TRANSLATIONS/README-pt.md)

> Create Language support in TRANSLATIONS folder and to add in [this README](https://github.com/btd1337/urutau-icons/tree/master/README.md)

# Installation:

## Requirements

 - elementary icon theme: https://github.com/elementary/icons

 > Note 1: Already installed by default in elementary OS

## Installation on Ubuntu Based Distros

```sh
wget https://github.com/btd1337/urutau-icons/releases/download/latest/urutau-icons.deb
sudo dpkg -i urutau-icons.deb
```

---

## Installation in Other Distros

### First Installation?

- Install `Git` if you don't already have it installed

```sh
sudo apt install git
```

- Clone the repository (or download files)

```sh
sudo git clone https://github.com/btd1337/urutau-icons.git /usr/share/icons/urutau-icons
```

- Set theme  

```sh
gsettings set org.gnome.desktop.interface icon-theme "urutau-icons"
```

### Update?

```sh
cd /usr/share/icons/urutau-icons
sudo git pull
```

## Uninstall

```sh
gsettings set org.gnome.desktop.interface icon-theme "elementary"
sudo rm -Rf /usr/share/icons/urutau-icons
```

## Donate

Appreciate for coffee or beer :)

##### Option 1:

[![Ko-fi](https://ko-fi.com/img/Kofi_Logo_Blue.svg)](ko-fi.com/btd1337)

##### Option 2:

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X85LVKF3HYPZL&lc=US&item_name=btd1337&item_number=elementary%2dicons&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted)

---

> The project is starting now, help us improve it. See in [this guide](https://elementary.io/docs/human-interface-guidelines#iconography) how to create an icon with elementary appearance and send us your creations!

# elementary Full Icon Theme

A mega pack of icons for elementary OS Loki.

![First Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img1.jpeg)  

![Second Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img2.jpeg)

![Third Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img3.png)

![Fourth Screenshot](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img4.png)  

## Installation:

### First Installation?

Install Git if you don't already have it installed.

    sudo apt install git

Create icon folder in your /home:  

    mkdir ~/.icons
    cd ~/.icons

Clone the repository (or download files):  

    git clone https://github.com/btd1337/elementary-full-icon-theme

Set theme:  

    gsettings set org.gnome.desktop.interface icon-theme "elementary-full-icon-theme"

### Update?

    cd ~/.icons/elementary-full-icon-theme
    git pull

### Uninstall?

    gsettings set org.gnome.desktop.interface icon-theme "elementary"
    rm -R ~/.icons/elementary-full-icon-theme

## The project is starting now, help us improve it. Submit new icons!

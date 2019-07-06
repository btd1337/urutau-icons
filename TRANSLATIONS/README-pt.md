> Doações

[![Ko-fi](https://ko-fi.com/img/Kofi_Logo_Blue.svg)](https://ko-fi.com/btd1337)

<p align="center">
  <img src="https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/logo.png"><br>
  <b>Icones Urutau</b>
  <br><br>
  Um pacote de icones que transforma os ícones das aplicações de terceiros com a aparência elementary.
  <br><br>
</p>

![Primeira Captura de Tela](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img1.jpeg)  

![Segunda Captura de Tela](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img2.jpeg)

![Terceira Captura de Tela](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img3.jpeg)

![Quarta Captura de Tela](https://raw.githubusercontent.com/btd1337/elementary-full-icon-theme/master/preview/img4.jpeg)  

---

# Tabela de Conteúdos

- [Tabela de Conteúdos](#table-of-contents)
  - [Seleção de Idioma](#language-selection)
  - [Instalação](#installation)
    - [Requerimentos](#requirements)
    - [Instalação em Distribuições Baseadas no Ubuntu](#installation-ubuntu-based-distros)
    - [Instalação em Outras Distribuições](#installation-other-distros)
      - [Primeira Instalação?](#first-installation)
      - [Atualização?](#first-installation)
  - [Desinstalar](#uninstall)

# Seleção de Idioma

[Trocar Idioma](https://github.com/btd1337/urutau-icons/tree/master/README.md#language-selection)

[Change Language](https://github.com/btd1337/urutau-icons/tree/master/README.md#language-selection)

> Crie suporte para sua linguagem na pasta TRANSLATIONS e adicione [neste README](https://github.com/btd1337/urutau-icons/tree/master/README.md)

# Instalação:

## Requerimentos

 - Pacote de icones elementary: https://github.com/elementary/icons

 > Nota 1: Já vem instalado por padrão no elementary OS

## Instalação em Distribuições Baseadas no Ubuntu

```sh
wget https://github.com/btd1337/urutau-icons/releases/download/latest/urutau-icons.deb
sudo dpkg -i urutau-icons.deb
```

---

## Instalação em Outras Distribuições

### Primeira Instalação?

- Instale o `Git` se você ainda não tem instalado Install Git if you don't already have it installed

```sh
sudo apt install git
```

- Clone o repositório (ou baixe os arquivos)

```sh
sudo git clone https://github.com/btd1337/urutau-icons.git /usr/share/icons/urutau-icons
```

- Ative o tema  

```sh
gsettings set org.gnome.desktop.interface icon-theme "urutau-icons"
```

### Atualização?

```sh
cd /usr/share/icons/urutau-icons
sudo git pull
```

## Desinstalar

```sh
gsettings set org.gnome.desktop.interface icon-theme "elementary"
sudo rm -Rf /usr/share/icons/urutau-icons
```

## Doações

Aprecie por um café ou cerveja :)

##### Opção 1:

[![Ko-fi](https://ko-fi.com/img/Kofi_Logo_Blue.svg)](https://ko-fi.com/btd1337)

##### Opção 2:

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=X85LVKF3HYPZL&lc=US&item_name=btd1337&item_number=elementary%2dicons&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted)

---

> O projeto está começando agora, nos ajude a melhorar. Veja [neste guia](https://elementary.io/docs/human-interface-guidelines#iconography) como criar um ícone com a aparência elementary e nos envie suas criações!

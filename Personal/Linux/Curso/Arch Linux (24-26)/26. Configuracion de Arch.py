"""

Añadir windows al GRUB
    sudo pacman -S os-prober
    sudo grun-mkconfig -o /boot/grub/grub.cfg

Instalar software:
    Pacman:
        sudo pacman -S alacritty
        sudo pacman -S htop neofetch

    AUR (Arch User Repository):
        Requisitos:
            sudo pacman -S git
            sudo git clone https://aur.archlinux.org/yay-git.git
            sudo chown -R arnau:arnau ./yay-git
            sudo -S base-devel
            makepkg -si

        Descargar Software:
            yay -S google-chrome
            yay -S micro (Editor desde terminal)







"""
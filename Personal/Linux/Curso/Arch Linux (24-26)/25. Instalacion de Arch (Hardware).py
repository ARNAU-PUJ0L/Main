"""
Teclado en español:
    loadkeys es

Internet:
    Nos conectamos con cable
    
        Red Inelambrica:
            iwctl
            device list
            station NOMBRE_DISPOSITIVO scan (El nombre sale del comando anterior)
            station NOMBRE_DISPOSITIVO get-networks
            station NOMBRE_DISPOSITIVO connect NOMBRE_ROUTER
            exit
    
    Probamos si estamos canectados: 
        ping archlinux.org

Hora:
    timedatectl set-ntp true

Particiones:
    cfdisk (En el caso de tener un nvme: cfdisk /dev/nvme0n1)
    Creamos tres nuevas particiones
    y le indicamos el tipo (Linuxswap, linuxfilesystem, linuxfilesystem)
    y le damos a write

Formateo de particiones:
    lsblk
    mkfs.ext4 /dev/sda5
    mkfs.ext4 /dev/sda6
    mkswap /dev/sda7

Activamos swap:
    swapon /dev/sda7

Montar sistemas de ficheros:
    mount /dev/sda5 /mnt
    mkdir /mnt/home
    mount /dev/sda6 /mnt/home
    mkdir /mnt/boot
    mount /dev/sda2 /mnt/boot


Instalacion:
    pacstrap /mnt base linux linux-firmware
    genfstab -U /mnt >> /mnt/etc/fstab


Configurar sistema:
    arch-chroot /mnt
    
    Zona Horaria:     
        ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime
        hwclock --systohc
    
    Idioma:
        pacman -S nano
        nano /etc/locale.gen  # Buscar en_US.UTF-8 UTF-8 y es_ES.UTF-8 UTF-8 (hay q descomentarlo)
        locale-gen
        echo "LANG=es_ES.UTF-8" > /etc/locale.conf
        echo "KEYMAP=es" > /etc/vconsole.conf

    Configurar Red:
        echo "asus" > /etc/hostname
        nano /etc/hosts
            127.0.0.1	localhost
            ::1		localhost
            127.0.1.1	elnombredemiequipo.localdomain	elnombredemiequipo
    
    Contraseña al root:
        passwd


    network_manager:
        pacman -S networkmanager
        systemctl enable NetworkManager

    GRUB:
        pacman -S grub efibootmgr
        grub-install --target=x86_64-efi --efi-directory=/boot
        grub-mkconfig -o /boot/grub/grub.cfg

    Usuarios:
        useradd -m arnau
        passwd arnau
        
        usermod -aG wheel,audio,video,storage usuario

    Instalar sudo:
        pacman -S sudo

    Descomentamos el eheel:
        nano /etc/sudoers (%wheel all=(all)all)

    exit
    umount -R /mnt
    shutdown now
 
Sacar USB y arrancar PC 


Conectarse a internet:
    nmcli device wifi list
    nmcli device wifi connect NOMBRE password CONTRASEÑA
    ping archlinux.org

Instalar Entorno de Escritorio KDE-Plasma:
    sudo pacman -S xorg
    sudo pacman -S plasma-meta kde-applications-meta
    sudo systemctl enable sddm
    reboot
"""
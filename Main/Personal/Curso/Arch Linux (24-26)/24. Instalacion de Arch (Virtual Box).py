"""
Definir la distribucion del teclado:
    loadkeys es

Verificar que estas conectado a internet: ping archlinux.org

Actualizar el relog: timedatectl set-ntp true





PARTICIONES

lsblk: Para ver los discod

cfdisk

Cuando estemos en UEF: upt 
Cuando estemos en Bios/virtualbox: dos

Seleccionamos el disco y le damos a new para crear una particion seleccionamos el tamaño
Nos preguntara si primaria o extendida (Es la particion del SO, va a ser primaria) Tipo linux
Y le deciomos q es booteable

Seleccionamos el disco y le damos a new para crear una particion seleccionamos el tamaño
Nos preguntara si primaria o extendida (Es la particion del swap, va a ser primaria) Tipo Linux swap

Seleccionamos el disco y le damos a new para crear una particion seleccionamos el tamaño
Nos preguntara si primaria o extendida (Es la particion del Home, va a ser primaria) Tipo Linux

Luego indicaremos cual es cual

Una vez creada vamos a write y escribimos yes y salimos de aqui




Formatear particiones

mkfs.ext4 /dev/sada1 (SO)
mkswap /dev/sada2 (swap)
mkfs.ext4 /dev/sada1 (Home)

activar swap: swapon /dev/sda2

Montar sistema de archivos: mount /dev/sda1 /mnt


Montar particiones home: 

    mkdir /mnt/home

    mount/dev/sda3 /mnt/home/



Instalar paquetes esenciales

pacstrap /mnt base linux linux-firmware



Fstab: Archivo q le indica al SO como hay q montar las particiones

    genfstab -U /mnt >> /mnt/etc/fstab


Salimos del USB:
    arch-chroot /mnt

Zona Horaria:   
    ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime

    hwclock --systohc

Idioma del Sistema: 
    Hay q borrar el comentario de unas lineas de el siguiente archivo:
        nano /etc/locale.gen
    en_US.UTF-8 UTF-8    y     es_ES.UTF-8 UTF-8   
    Guardamos y salimos

    Generamos el archivo del idioma:
        locale-gen

    
Definir permanentemente la distrivucion del teclado: 
    echo "KEYMAP=es" > /etc/vconsole.conf 


Escribir el nombre del equipo:
    echo "Arch" > /etc/hostname 

Hosts:
    nano /etc/hosts
    127.0.0.1	localhost
    ::1		localhost
    127.0.1.1	elnombredemiequipo.localdomain	elnombredemiequipo

Contraseña para el root:
passwd

Internet:
    pacman -S networkmanager

    I lo habilitamos
        systemctl enable NetworkManager

Instalamos GRUB:
    pacman -S grub

    grub-install /dev/sda

    grub-mkconfig -o /boot/grub/grub.cfg

Creamos un Usuario:
    useradd -m arnau
    passwd arnau


Instalamos sudo:
    pacman -S sudo

Añadimos el usuario al grupo wheel (sudo):
    usermod -aG wheel,audio,video,storage arnau

Descomentamos el grupo wheel (%wheel all=(all)All)
    nano /etc/sudoers 

exit

Desmontamos las particiones:
    umount -R /mnt

reboot

Ahora tocaria instalar un entorco grafico

"""
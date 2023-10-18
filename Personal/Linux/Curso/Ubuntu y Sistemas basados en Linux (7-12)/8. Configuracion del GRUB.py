"""
Para configurar el GRUB hay que editar un fichero llamado /etc/default/grub

Para editar el GRUB hay q ser root

1. Hacemos q la terminal nos muestre el fichero: cat /etc/default/grub

2. I lo editamos (hay q ser root): sudo nano /etc/default/grub

3. Podemos comenzar a editar: 
    
    GRUB_DEFAULT: Cuando encendemos el ordenador, nos dan varias opciones sobre q ejecutar
    Ubuntu, Opciones Avanzadas de Ubuntu, windows o UEFI. Si cambiamos  el valor de GRUB_DEFAULT
    cambiaremos la opcion predeterminada (se enpiaza a contar desde el 0)

    GRUB_TIMEOUT: Puedes cambiar el tiempo el cual una vez terminado se iniciara un S.O  (en segundos)


4. Aplicamos los cambios (siendo root): sudo update-grub 


NOTA: El fichero real del GRUB es: nano /boot/grub/grub.cfg
      No se ha de editar manualmente ya q es un script y es jugarsela, 
      hay otras formas de editar el grub como la q acabamos de ver

"""
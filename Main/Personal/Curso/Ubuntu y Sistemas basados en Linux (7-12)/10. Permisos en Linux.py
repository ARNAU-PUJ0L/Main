"""
Ver los permisos de un fichero: ls -l

Permisos: rw- rw- r-- (Ejemplo)

    ¿Como se lee?

        Los tres primeros caracteres son los permisos del usuario
        Los tres siguientes son los permisos del grupo
        Los tres ultimos caracteres son los permisos para el resto de ususarios

        R = Read
        W = Write
        X = Execute


    Como dar mas permisos: 
    
        chmod u+x prueba.txt

        u = usuario
        x = permiso de ejecucion
        g = grupo
        o = otros


    ¿Como quitar permisos?: 
    
        chmod u-x prueba.txt



    ¿Como concatenar las concesiones o negaciones de permisos?
    
        chmod u+w,g+r,o-x prueba.txt


    ¿Como concatenar las concesiones o negaciones de permisos? (Binario)

        1 = True
        0 = False
        
        Usuario: 
        Lectura: si, escritura: no, ejecucion: si
        1            0              1   


        Grupo: 
        Lectura: si, escritura: si, ejecucion: no
        1            1              0


        Otros:
        Lectura: no, escritura: no, ejecucion: no
        0            0              0   

        passamos los numeros de binario a decimal
        
        Usuario: 101(B) = 5 (D)
        Grupo: 110(B) = 6 (D)
        Otros: 000(B) = 0 (D)

        Escrivimos el comando: chmod 560 prueba.txt
"""
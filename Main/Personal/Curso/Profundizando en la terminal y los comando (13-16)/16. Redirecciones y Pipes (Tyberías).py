"""

Todos los procesos tienen:

    stdin standard input 0      (Por defecto: Teclado)

    stout standard output 1     (Por defecto: Pantalla)

    stderr standard error 2     (Por defecto: Pantalla)


Redireccion de la funcion echo a un fichero: echo "Hola Mundo" > fichero.txt

Redireccion de la funcion ls -l a un fichero: ls -l > fichero.txt


Tuberias 
    
ls -l | grep Documentos

    Redirige la salida de ls -l como entrada del grep (En este ejemplo)


cut: cut -d " " -f 3 productos.txt (Corta las columnas, -d = delimitador)  

sed: sed "s/  */ /g* fichero.txt (Substitulle los dos espacios por uno, es util si las columnas no estan alineada y quieres usar cut)

tail: ls -l | tail -n +2 (Selecciona las lineas que nos interesan, +2 = apartir de la 2, 2 = dos ultimas)

Rediriguir el error: python3 si.py 2> e.txt

Ridiriguir error + salida: python3 si.py 2> ficheroError.txt > salida.txt

Añadir una linea de texto en un fichero que no esta vacio: echo "mensaje 2" >> salida.txt




"""
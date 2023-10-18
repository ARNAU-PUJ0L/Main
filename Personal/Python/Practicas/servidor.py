import socket

misocket=socket.socket()
misocket.bind(("localhost", 8356))

print("Servidor operativo")




conexion, addr = misocket.accept()
 

mensaje = conexion.recv(1024)


conexion.send(mensaje)



def conexion():
    while True:
        try:
            conexion, addr = misocket.accept()
            mensaje = conexion.recv(1024)

        except:
            




conexion.close()
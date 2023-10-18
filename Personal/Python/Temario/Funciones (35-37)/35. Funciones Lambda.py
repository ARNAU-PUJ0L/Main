"""Funciones lambda
	Sirven para abreviar funciones, si es muy compleja la funcion no se puede abreviar


def area_triangulo(base, altura):

	return(base*altura)/2


triangulo1=(area_triangulo(5,7))

triangulo2=(area_triangulo(96,2))

print(triangulo1)

print(triangulo2)"""


#":" = a return
area_triangulo=lambda base,altura:(base*altura)/2

print(area_triangulo(7,36))


al_cubo=lambda numero:numero**3

print(al_cubo(55))


destacar_valor=lambda comision:"¡{}! €".format(comision)

comision_ana=3686

print(destacar_valor(comision_ana))
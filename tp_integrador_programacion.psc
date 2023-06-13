Algoritmo sin_titulo

	Definir op,llamador Como Entero
	Definir array_agenda Como real
	Dimension array_agenda[5,8]
	
	array_agenda[0,0] = 8
	array_agenda[0,1] = 8.5
	array_agenda[0,2] = 9
	array_agenda[0,3] = 9.5
	array_agenda[0,4] = 10
	array_agenda[0,5] = 10.5
	array_agenda[0,6] = 11
	array_agenda[0,7] = 11.5
	
	array_agenda[1,0] = 8
	array_agenda[1,1] = 8.5
	array_agenda[1,2] = 9 
	array_agenda[1,3] = 9.5
	array_agenda[1,4] = 10
	array_agenda[1,5] = 10.5
	array_agenda[1,6] = 11
	array_agenda[1,7] = 11.5
	
	array_agenda[2,0] = 8
	array_agenda[2,1] = 8.5
	array_agenda[2,2] = 9
	array_agenda[2,3] = 9.5
	array_agenda[2,4] = 10
	array_agenda[2,5] = 10.5
	array_agenda[2,6] = 11
	array_agenda[2,7] = 11.5
	
	array_agenda[3,0] = 8
	array_agenda[3,1] = 8.5
	array_agenda[3,2] = 9 
	array_agenda[3,3] = 9.5 
	array_agenda[3,4] = 10
	array_agenda[3,5] = 10.5
	array_agenda[3,6] = 11
	array_agenda[3,7] = 11.5
	
	array_agenda[4,0] = 8
	array_agenda[4,1] = 8.5
	array_agenda[4,2] = 9
	array_agenda[4,3] = 9.5
	array_agenda[4,4] = 10
	array_agenda[4,5] = 10.5
	array_agenda[4,6] = 11
	array_agenda[4,7] = 11.5
	
	
	Escribir "bienvenido, seleccione una de las opciones"
	Escribir "[1] para reservar un turno"
	leer op
	
	Segun op Hacer
		1:
			llamador=op1(array_agenda)
		De Otro Modo:
			Escribir "ingresó una opcion no valida"
	Fin Segun
	
FinAlgoritmo 

Funcion return_de_op1 = op1 (agenda)
	Definir i, j,array_guardar_turno,dia,turno Como Entero
	Dimension array_guardar_turno[1,1]
	
	para i = 0 Hasta 4 Hacer
		Escribir "los turnos disponibles del dia " i+1 " son:"
		para j = 0 Hasta 7 Hacer
			Escribir Sin Saltar j+1,":"
			Escribir agenda[i,j]
		FinPara
	FinPara
	
	Escribir "ingrese el dia y turno que desea reservar"
	leer dia,turno 
	array_guardar_turno[dia,turno] = 0
	Escribir "usted sele
	
Fin Funcion

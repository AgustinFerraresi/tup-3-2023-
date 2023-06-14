Algoritmo sin_titulo

	Definir op,llamador,dia,turno Como Entero
	Definir array_agenda Como CARACTER
	dia <- 5
	turno <- 8
	
	Dimension array_agenda[dia,turno]
	
	//LUNES
	array_agenda[0,0] = "8"
	array_agenda[0,1] = "8:30"
	array_agenda[0,2] = "9"
	array_agenda[0,3] = "9:30"
	array_agenda[0,4] = "10"
	array_agenda[0,5] = "10:30"
	array_agenda[0,6] = "11"
	array_agenda[0,7] = "11:30"
	//MARTES
	array_agenda[1,0] = "8"
	array_agenda[1,1] = "8:30"
	array_agenda[1,2] = "9 "
	array_agenda[1,3] = "9:30"
	array_agenda[1,4] = "10"
	array_agenda[1,5] = "10:30"
	array_agenda[1,6] = "11"
	array_agenda[1,7] = "11:30"
	//MIERCOLES
	array_agenda[2,0] = "8"
	array_agenda[2,1] = "8:30"
	array_agenda[2,2] = "9"
	array_agenda[2,3] = "9:30"
	array_agenda[2,4] = "10"
	array_agenda[2,5] = "10:30"
	array_agenda[2,6] = "11"
	array_agenda[2,7] = "11:30"
	//JUEVES
	array_agenda[3,0] = "8"
	array_agenda[3,1] = "8:30"
	array_agenda[3,2] = "9 "
	array_agenda[3,3] = "9:30" 
	array_agenda[3,4] = "10"
	array_agenda[3,5] = "10:30"
	array_agenda[3,6] = "11"
	array_agenda[3,7] = "11:30"
	//VIERNES
	array_agenda[4,0] = "8"
	array_agenda[4,1] = "8:30"
	array_agenda[4,2] = "9"
	array_agenda[4,3] = "9:30"
	array_agenda[4,4] = "10"
	array_agenda[4,5] = "10:30"
	array_agenda[4,6] = "11"
	array_agenda[4,7] = "11:30"
	
	//Menu mostrado al iniciar el programa
	Escribir "bienvenido, seleccione una de las opciones:"
	Escribir "[1] para reservar un turno"
	Escribir "[2] para buscar un paciente"
	Escribir "[3] para ver agenda del vacunatorio"
	Escribir "[4] para mostrar la lista de pacientes ordenada"
	leer op
	
	Segun op Hacer
		1:
			llamador=op1(array_agenda)
		2:
			llamador=op2(array_agenda)
		3:
			llamador=op3(array_agenda)
		4:
			llamador=op4(array_agenda)
		5:
			llamador=op5(array_agenda)
			
		De Otro Modo:
			Escribir "ingresó una opcion no valida"
	Fin Segun
	
FinAlgoritmo 

Funcion return_de_op1 = op1(agenda_fun_1)
	Definir i,j,dias,turno,diaReserva,turnoReserva Como Entero
	definir array_reservar_turno,aux Como Caracter
	dias <- 5
	turno <- 8
	Dimension array_reservar_turno[dias,turno]
	//Inicializo el array de los turnos disponibles con un mensaje porque al iniciar el programa no hay ningun turno dado,
	//A medida que se van dando los turnos se van reemplazando los elementos de los arrays de turnos dados y  turnos disponibles.
	para i<- 0 hasta dias-1 Hacer
		para j<-0 hasta turno-1 Hacer
			array_reservar_turno[i,j] <- "Disponible"
		FinPara
	FinPara
	//Muestra el array de los turnos disponibles
	para i = 0 Hasta dias-1 Hacer
		Escribir "los turnos disponibles del dia " i+1 " son:"
		para j = 0 Hasta 7 Hacer
			Escribir Sin Saltar j+1,":"
			Escribir agenda_fun_1[i,j]
		FinPara
	FinPara
	
	//Le pido al usuario el dia y el turno que desea reservar
	Escribir "ingrese el dia y turno que desea reservar: "
	leer diaReserva,turnoReserva
	//Realizo el cambio en los arrays con el turno ingresado por el usuario, quedando un turno dado en  "array_reservar_turno"  y un mensaje de turno no disponible en la posicion del turno dado en el array "agenda_fun_1"
	aux <- agenda_fun_1[diaReserva-1,turnoReserva-1]
	agenda_fun_1[diaReserva-1,turnoReserva-1] = "Turno no disponible"
	array_reservar_turno[diaReserva-1,turnoReserva-1] = "Turno ya dado"
	Escribir "usted selecciono el turno " turnoReserva " del dia " diaReserva
	
	
	//PRUEBASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
	para i<- 0 hasta dias-1 Hacer
		Escribir "los turnos del dia " i+1 " son:"
		para j<- 0 hasta turno-1 Hacer
			Escribir agenda_fun_1[i,j]
		FinPara
	FinPara
	para i<- 0 hasta dias-1 Hacer
		Escribir "los turnos disponibles del dia " i+1 " son:"
		para j<- 0 hasta turno-1 Hacer
			Escribir array_reservar_turno[i,j] 
		FinPara
	FinPara
	
Fin Funcion

Funcion return_de_op2 = op2 (agenda_fun_2)
FinFuncion

Funcion return_de_op3 = op3 (agenda_fun_3)
FinFuncion

Funcion return_de_op4 = op4 (agenda_fun_4)
FinFuncion

Funcion return_de_op5 = op5 (agenda_fun_5)
FinFuncion
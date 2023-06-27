Algoritmo sin_titulo

	Definir op,llamador,dia,turno,i,j Como Entero
	Definir array_agenda,array_reservar_turno Como CARACTER
	dia <- 5
	turno <- 8
	
	Dimension array_agenda[dia,turno]
	Dimension array_reservar_turno[dia,turno]
	
	//Inicializo el array de los turnos disponibles con un mensaje porque al iniciar el programa no hay ningun turno dado,
	//A medida que se van dando los turnos se van reemplazando los elementos de los arrays de turnos dados y  turnos disponibles.
	para i<- 0 hasta dia-1 Hacer
		para j<-0 hasta turno-1 Hacer
			array_reservar_turno[i,j] <- "Turno disponible"
		FinPara
	FinPara
	
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
	array_agenda[1,2] = "9"
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
	Repetir
		Escribir "bienvenido, seleccione una de las opciones:"
		Escribir "[1] para reservar un turno"
		Escribir "[2] para buscar un paciente"
		Escribir "[3] para ver agenda del vacunatorio"
		Escribir "[4] para mostrar la lista de pacientes ordenada"
		Escribir "[5] para mostrar listado/s"
		
		Repetir
			leer op
			Segun op Hacer
				1:
					llamador=op1(array_agenda,array_reservar_turno)
				2:
					llamador=op2(array_agenda)
				3:
					llamador=op3(array_agenda)
				4:
					llamador=op4(array_agenda)
				5:
					llamador=op5(array_agenda)
					
				De Otro Modo:
					Escribir "ingresó una opcion no valida, intente nuevamente"
			Fin Segun
		Hasta Que  (op=1 o op=2 o op=3 o op=4 o op=5)
	Mientras Que (op <> 5)
	
FinAlgoritmo 


Funcion return_de_op1 = op1(agenda_fun_1,array_reservar_turno)

	Definir error,bandera_turno Como Logico
	Definir i,j,dias,turno,diaReserva,turnoReserva,stock_neumococo_conjugada,stock_poliomielitis,stock_quintuple,stock_rotavirus,stock_meningococo,stock_tripe_viral Como Entero
	definir aux,verTurnos,datos_usuario,ops Como Caracter
	dias <- 5
	turno <- 8
	bandera_turno <- Falso
	Dimension datos_usuario[4]
	

	
	//Muestra el array de los turnos disponibles
	para i = 0 Hasta dias-1 Hacer
		Escribir "los turnos disponibles del dia " i+1 " son:"
		para j = 0 Hasta 7 Hacer
			Escribir Sin Saltar j+1,":"
			Escribir agenda_fun_1[i,j]
		FinPara
	FinPara
	
	//Le pido al usuario el dia y el turno que desea reservar
	Repetir
		Escribir "ingrese el dia y turno que desea reservar: "
		leer diaReserva,turnoReserva
		//Realizo el cambio en los arrays con el turno ingresado por el usuario, quedando un turno dado en  "array_reservar_turno" 
		//y un mensaje de turno no disponible en la posicion del turno dado en el array "agenda_fun_1"
		si array_reservar_turno[diaReserva-1,turnoReserva-1] == "Turno no disponible" Entonces
			Escribir "El turno elegido no esta disponible, por favor seleccione otro."
		SiNo
			array_reservar_turno[diaReserva-1,turnoReserva-1] = "Turno no disponible"
			aux = agenda_fun_1[diaReserva-1,turnoReserva-1]
			agenda_fun_1[diaReserva-1,turnoReserva-1] =  aux 
			Escribir "usted selecciono el turno " turnoReserva " del dia " diaReserva
			bandera_turno = Verdadero
		FinSi
		
	Mientras Que bandera_turno = Falso
	
	
	//Pregunta al usuario si quiere ver la lista de turnos nuevamente.
	Repetir
		Escribir "Desea ver la lista de turnos nuevamente?: [S]=si [N]=no"
		Leer verTurnos
		si verTurnos <> "S" y verTurnos <> "s" y verTurnos <> "N" y verTurnos <> "n" Entonces
			Escribir "Error, vuelve a intentarlo."
		FinSi
	Hasta Que  verTurnos == "S" o verTurnos == "s" o verTurnos == "N" o verTurnos == "n"
	
	//Si el usuario ingresa un "S" o "s" le mostramos la lista de turnos actualizada donde aclaramos los que no estan disponibles.
	si verTurnos == "s" o verTurnos == "S" Entonces
		para i<- 0 hasta dias-1 Hacer
			Escribir "los turnos del dia " i+1 " son:"
			para j<- 0 hasta turno-1 Hacer
				Escribir  agenda_fun_1[i,j] "-" array_reservar_turno[i,j]
			FinPara
			Escribir " "
		FinPara
	FinSi
	Escribir " "
	Escribir "Para terminar necesitamos algunos datos"
	Escribir " "
	
	/// los datos del usuario y hago la validacion de cada uno
	
	///leo y valido nombre y apellido
	Hacer
		Escribir "ingrese nombre y apellido"
		leer datos_usuario[0]
		error = Falso
		
		para i = 0 hasta Longitud(datos_usuario[0])-1 Hacer
			aux = Subcadena(datos_usuario[0],i,i)
			si aux == "0" o aux == "1" o aux == "2" o aux == "3" o aux == "4" o aux == "5" o aux == "6" o aux == "7" o aux == "8" o aux == "9" o aux == "/" o aux == "*" o aux == "-" o aux == "+" o aux == "$" Entonces
				error = Verdadero
			FinSi
		FinPara
		
		si aux == "0" o aux == "1" o aux == "2" o aux == "3" o aux == "4" o aux == "5" o aux == "6" o aux == "7" o aux == "8" o aux == "9" o aux == "/" o aux == "*" o aux == "-" o aux == "+" o aux == "$" Entonces
			Escribir "el nombre ingresado no es correcto, intentelo nuevamente"
		FinSi
		
		
	Mientras Que error == Verdadero
	
	Limpiar Pantalla
	
	Escribir "el nombre y/o apellido del paciente es " datos_usuario[0]
	Escribir " "
	
	///leo y valido dni
	//en datos_usuario[1] se guardara el dni 
	//la longitud del dni puede ser entre 7 u 8 caracteres
	Hacer 
		error = falso 
		Escribir "ingrese su dni"
		leer datos_usuario[1]
		
		//valido la longitud del dni
		si Longitud(datos_usuario[1]) > 8 o Longitud(datos_usuario[1]) < 7 Entonces
			error = Verdadero
		FinSi
		
		//valido los caracteres del dni
		para i = 0 Hasta Longitud(datos_usuario[1])-1 Hacer
			aux = Subcadena(datos_usuario[1],i,i)
			si aux <> "0" y aux <> "1" y aux <> "2" y aux <> "3" y aux <> "4" y aux <> "5" y aux <> "6" y aux <> "7" y aux <> "8" y aux <> "9"  
				error = Verdadero
			FinSi
		FinPara
		
		si error == Verdadero
			Escribir "ERROR: el dni ingresado no es valido"
		FinSi
	Mientras Que error == Verdadero
	
	Limpiar Pantalla
	Escribir "El dni del usuario es: " datos_usuario[1]
	
	//en datos_usuario[3] se guardara la edad  
	//la edad debe estar entre 0 y 99
	Escribir " "
	///leo y valido edad
	Hacer 
		error = falso 
		Escribir "Ingrese la edad del paciente"
		Escribir " "
		Escribir "Si el paciente es menor a 1 año, ingrese la cantidad de meses con un " "[.] (punto) " "o una [,] (coma) adelante del numero de meses"
		Escribir "Ejemplo: 5 meses = .5 /,5"
		Escribir " "
		leer datos_usuario[2]
		
		Escribir " "
		//valido la longitud del dni
		si Longitud(datos_usuario[2]) > 2 o Longitud(datos_usuario[2]) < 0 Entonces
			error = Verdadero
			Limpiar Pantalla
			Escribir "ERROR: la edad debe ser mayor a 0 y menor a 100, intentelo nuevamente"
		FinSi
		
		Escribir " " 
		//valido los caracteres del dni
		para i = 0 Hasta Longitud(datos_usuario[2])-1 Hacer
			aux = Subcadena(datos_usuario[2],i,i)
			si aux <> "0" y aux <> "1" y aux <> "2" y aux <> "3" y aux <> "4" y aux <> "5" y aux <> "6" y aux <> "7" y aux <> "8" y aux <> "9" y aux <> "." y aux <> ","
				error = Verdadero
				Escribir "ERROR: se introdujo un caracter no valido de la edad, intentelo nuevamente"
			FinSi
		FinPara
		Escribir " " 
	Mientras Que error == Verdadero
	
	
	Limpiar Pantalla
	
	si Subcadena(datos_usuario[2],0,0) == "." o Subcadena(datos_usuario[2],0,0) == "," entonces
		Escribir "la edad del paciente es " datos_usuario[2] " meses"
	SiNo
		Escribir "la edad del paciente es " datos_usuario[2] " años"
	FinSi
	
	Escribir " " 
	///leo y valido vacuna
	stock_neumococo_conjugada = 10
	stock_poliomielitis = 10 	
	stock_quintuple = 10
	stock_rotavirus = 10
	stock_meningococo = 10
	stock_tripe_viral = 10
	
	//verifico que no se ingresen caracteres no deseados en el ingreso del tipo de vacuna y que esta sea correcta
	Hacer
		Escribir "ingrese la vacuna a colocar"
		leer datos_usuario[3]
		error = Falso
		
		para i = 0 hasta Longitud(datos_usuario[3])-1 Hacer
			aux = Subcadena(datos_usuario[3],i,i)
			si aux == "0" o aux == "1" o aux == "2" o aux == "3" o aux == "4" o aux == "5" o aux == "6" o aux == "7" o aux == "8" o aux == "9" o aux == "/" o aux == "*" o aux == "-" o aux == "+" o aux == "$" Entonces
				error = Verdadero
			FinSi
		FinPara
		
		si datos_usuario[3] <> "neumococo conjugada" y datos_usuario[3] <> "poliomielitis " y datos_usuario[3] <> "quintuple" y datos_usuario[3] <> "rotavirus" y datos_usuario[3] <> "meningococo" y datos_usuario[3] <> "tripe viral"
			error = Verdadero
		FinSi
		
		si error == Verdadero Entonces
			Escribir "ERROR: la vacuna ingresado no es valida"
		FinSi
	Mientras Que error == Verdadero
	Limpiar Pantalla
	
	//actualizo el stock
	si datos_usuario[3] == "neumococo conjugada" Entonces
		stock_neumococo_conjugada = stock_neumococo_conjugada - 1
	SiNo
		si datos_usuario[3] == "poliomielitis" Entonces
			stock_poliomielitis = stock_poliomielitis - 1 
		SiNo 
			si datos_usuario[3] == "quintuple" Entonces
				stock_quintuple = stock_quintuple - 1
			SiNo
				si datos_usuario[3] == "rotavirus" Entonces
					stock_rotavirus = stock_rotavirus - 1
				SiNo
					si datos_usuario[3] == "meningococo" entonces
						stock_meningococo = stock_meningococo - 1
					SiNo
						si datos_usuario[3] == "triple viral" entonces
							stock_tripe_viral = stock_tripe_viral - 1
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
	Escribir "la vacuna a aplicar es: " datos_usuario[3]
	Escribir " " 
	Escribir "desea ver el stock de las vacunas actualizado?"
	Escribir "[S] = si | [N] = no"
	leer ops
	si ops == "s" o ops == "S" entonces
		Escribir " "
		Escribir " y es el siguiente:"
		Escribir " "
		Escribir "neumococo conjugada: " stock_neumococo_conjugada
		Escribir "poliomielitis: " stock_poliomielitis
		Escribir "quintuple: " stock_quintuple 
		Escribir "rotavirus: " stock_rotavirus
		Escribir "meningococo: " stock_meningococo
		Escribir "triple viral: " stock_tripe_viral
		Escribir " "
	FinSi
	
	
	Escribir "Los datos del paciente son: "
	Escribir " "
	Escribir "Nombre y/o apellido: " datos_usuario[0]
	Escribir "Dni: " datos_usuario[1]
	
	si Subcadena(datos_usuario[2],0,0) == "." o Subcadena(datos_usuario[2],0,0) == "," entonces
		Escribir "Edad: " datos_usuario[2] " meses"
	SiNo
		Escribir "Edad: " datos_usuario[2] " años"
	FinSi
	
	Escribir "Vacuna a aplicar: " datos_usuario[3]

Fin Funcion
 
Funcion return_de_op2 = op2 (agenda_fun_2)
FinFuncion

Funcion return_de_op3 = op3 (agenda_fun_3)
FinFuncion

Funcion return_de_op4 = op4 (agenda_fun_4)
	
	
FinFuncion

Funcion return_de_op5 = op5 (agenda_fun_5)
FinFuncion
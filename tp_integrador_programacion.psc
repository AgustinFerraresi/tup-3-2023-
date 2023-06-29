Algoritmo sin_titulo
	
	Definir op,llamador,dia,turno,i,j,pacientes,datos_pacientes Como Entero
	Definir array_agenda,array_reservar_turno,array_pacientes Como CARACTER
	Definir stock_neumococo_conjugada,stock_poliomielitis,stock_quintuple,stock_rotavirus,stock_meningococo,stock_triple_viral Como Entero
	definir turnos_lunes,turnos_martes,turnos_miercoles,turnos_jueves,turnos_viernes como entero
	dia <- 5
	turno <- 8
	pacientes <- 40
	datos_pacientes <- 6
	//cantidad de stock de cada vacuna
	stock_neumococo_conjugada <- 10
	stock_poliomielitis <- 10 	
	stock_quintuple <- 10
	stock_rotavirus <- 10
	stock_meningococo <- 10
	stock_triple_viral <- 10
	//cantidad de turnos los dias de la semana
	turnos_lunes <- 8
	turnos_martes <- 8
	turnos_miercoles <- 8
	turnos_jueves <- 8
	turnos_viernes <- 8
	
	Dimension array_agenda[dia,turno]
	Dimension array_reservar_turno[dia,turno]
	Dimension  array_pacientes[pacientes,datos_pacientes]
	
	//Inicializo el array de los turnos disponibles con un mensaje porque al iniciar el programa no hay ningun turno dado,
	//A medida que se van dando los turnos se van reemplazando los elementos de los arrays de turnos dados y  turnos disponibles.
	para i<- 0 hasta dia-1 Hacer
		para j<-0 hasta turno-1 Hacer
			array_reservar_turno[i,j] <- "Turno disponible"
		FinPara
	FinPara
	
	//Inicializo el array con los datos de los pacientes en vacio para llenarlos a medida que se van ocupando los turnos
	para i<- 0 hasta pacientes-1 Hacer
		para j<- 0 hasta datos_pacientes-1 Hacer
			array_pacientes[i,j] = "Vacio"
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
		Escribir "[6] para salir del programa"
		
		Repetir
			leer op
			Segun op Hacer
				1:
					op1(array_agenda,array_reservar_turno,array_pacientes,stock_neumococo_conjugada,stock_poliomielitis,stock_quintuple,stock_rotavirus,stock_meningococo,stock_triple_viral,turnos_lunes,turnos_martes,turnos_miercoles,turnos_jueves,turnos_viernes)
				2:
					op2(array_pacientes)
				3:
					op3(array_agenda,array_reservar_turno,dia,turno)
				4:
					llamador=op4(array_pacientes,pacientes,datos_pacientes)
				5:
					op5(array_agenda,array_reservar_turno,array_pacientes,stock_neumococo_conjugada,stock_poliomielitis,stock_quintuple,stock_rotavirus,stock_meningococo,stock_triple_viral,turnos_lunes,turnos_martes,turnos_miercoles,turnos_jueves,turnos_viernes)
				6:
					Escribir "Programa finalizado, vuelva pronto. =)"
				De Otro Modo:
					Escribir "Usted ingresó una opcion no valida, intente nuevamente"
			Fin Segun
		Hasta Que  (op=1 o op=2 o op=3 o op=4 o op=5 o op=6)
	Mientras Que (op <> 6)
	
FinAlgoritmo 


subproceso op1(agenda_fun_1 Por Referencia,array_reservar_turno Por Referencia,array_pacientes Por Referencia,stock_neumococo_conjugada Por Referencia,stock_poliomielitis Por Referencia,stock_quintuple Por Referencia,stock_rotavirus Por Referencia,stock_meningococo Por Referencia,stock_triple_viral Por Referencia,turnos_lunes Por Referencia,turnos_martes Por Referencia,turnos_miercoles Por Referencia,turnos_jueves Por Referencia,turnos_viernes Por Referencia)
	
	Definir error,bandera_turno Como Logico
	Definir i,j,dias,turno,diaReserva,turnoReserva,pacientes,datos_pacientes Como Entero
	definir aux,verTurnos,datos_usuario,ops,dia Como Caracter
	dias <- 5
	turno <- 8
	pacientes <- 40
	datos_pacientes <- 6
	bandera_turno <- Falso
	Dimension datos_usuario[datos_pacientes]
	
	
	
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
		
		Repetir
			Escribir "ingrese el dia y turno que desea reservar: "
			leer diaReserva,turnoReserva
			si (diaReserva < 1 o diaReserva > 5) o (turnoReserva < 1 o turnoReserva > 8) Entonces
				Escribir "Error al seleccionar fecha y turno, vuelve a intentarlo."
			FinSi
		Mientras Que (diaReserva < 1 o diaReserva > 5) o (turnoReserva < 1 o turnoReserva > 8)
		
		//Realizo el cambio en los arrays con el turno ingresado por el usuario, quedando un turno dado en  "array_reservar_turno" 
		//y un mensaje de turno no disponible en la posicion del turno dado en el array "agenda_fun_1"
		Segun diaReserva Hacer
			1:
				turnos_lunes = turnos_lunes - 1;
			2:
				turnos_martes = turnos_martes - 1;
			3:
				turnos_miercoles = turnos_miercoles - 1;
			4:
				turnos_jueves = turnos_jueves - 1
			5:
				turnos_viernes = turnos_viernes - 1
		Fin Segun
		si array_reservar_turno[diaReserva-1,turnoReserva-1] == "Turno no disponible" Entonces
			Escribir "El turno elegido no esta disponible, por favor seleccione otro."
		SiNo
			datos_usuario[4] <- agenda_fun_1[diaReserva-1,turnoReserva-1]
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
		
		si (aux == "0" o aux == "1" o aux == "2" o aux == "3" o aux == "4" o aux == "5" o aux == "6" o aux == "7" o aux == "8" o aux == "9" o aux == "/" o aux == "*" o aux == "-" o aux == "+" o aux == "$") y error == Verdadero Entonces
			Escribir "el nombre ingresado no es correcto, intentelo nuevamente."
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
		Escribir "la edad del paciente es " datos_usuario[2] " a?os"
	FinSi
	
	Escribir " " 
	
	//verifico que no se ingresen caracteres no deseados en el ingreso del tipo de vacuna y que esta sea correcta
	Hacer
		Escribir "ingrese la vacuna a colocar"
		Escribir "neumococo conjugada"
		Escribir "poliomielitis"
		Escribir "quintuple"
		Escribir "rotavirus"
		Escribir "meningococo"
		Escribir "triple viral"
		leer datos_usuario[3]
		error = Falso
		
		para i = 0 hasta Longitud(datos_usuario[3])-1 Hacer
			aux = Subcadena(datos_usuario[3],i,i)
			si aux == "0" o aux == "1" o aux == "2" o aux == "3" o aux == "4" o aux == "5" o aux == "6" o aux == "7" o aux == "8" o aux == "9" o aux == "/" o aux == "*" o aux == "-" o aux == "+" o aux == "$" Entonces
				error = Verdadero
			FinSi
		FinPara
		
		si datos_usuario[3] <> "neumococo conjugada" y datos_usuario[3] <> "poliomielitis " y datos_usuario[3] <> "quintuple" y datos_usuario[3] <> "rotavirus" y datos_usuario[3] <> "meningococo" y datos_usuario[3] <> "triple viral"
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
							stock_triple_viral = stock_triple_viral - 1
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
	Escribir "la vacuna a aplicar es: " datos_usuario[3]
	Escribir " " 
	Escribir "desea ver el stock de las vacunas actualizado?"
	Repetir
		Escribir "[S] = si | [N] = no"
		leer ops
		si (ops <> "s" o ops <> "S") o (ops <> "n" o ops<> "N") Entonces
			Escribir "La opcion seleccionada inválida, vuelve a intentarlo."
		FinSi
	Mientras Que (ops <> "s" y ops <> "S") y (ops <> "n" y ops<> "N") 
	si ops == "s" o ops == "S" entonces
		Escribir " "
		Escribir " y es el siguiente:"
		Escribir " "
		Escribir "neumococo conjugada: " stock_neumococo_conjugada
		Escribir "poliomielitis: " stock_poliomielitis
		Escribir "quintuple: " stock_quintuple 
		Escribir "rotavirus: " stock_rotavirus
		Escribir "meningococo: " stock_meningococo
		Escribir "triple viral: " stock_triple_viral
		Escribir " "
	FinSi
	
	Segun diaReserva Hacer
        1:dia = "lunes"
        2:dia = "martes"
        3:dia = "miercoles"
        4:dia = "jueves"
        5:dia = "viernes"
    FinSegun
	datos_usuario[5] = dia
	
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
	
	Escribir "Horario turno: " datos_usuario[4] "hs"
	
	Escribir "Dia turno: " datos_usuario[5]
	
	
	///Pasaje de arrays (de datos_usuario a array_pacientes)
	
	para i<-0 hasta pacientes-1 Hacer
		si array_pacientes[i,0] == "Vacio" Entonces
			para j<- 0 hasta datos_pacientes-1 Hacer
				array_pacientes[i,j] = datos_usuario[j]
			FinPara
			i<- pacientes-1
		FinSi
	FinPara
	
Fin subproceso

SubProceso op2(array_pacientes)
    Definir DniCaracter Como Caracter
    Definir dniAbuscar como caracter
    Definir i, aux Como Entero
    Definir encontrado como entero
    i = 0
    encontrado = 0
    
    Repetir
        Escribir "Ingrese el DNI"
        Leer dniAbuscar
        Si Longitud(dniAbuscar) < 8 y Longitud(dniAbuscar) > 9 Entonces
            Escribir "DNI inválido, intente nuevamente"
        Fin Si
    mientras Que Longitud(dniAbuscar) < 8 y Longitud(dniAbuscar) > 9
    
    Repetir
        Si dniAbuscar == array_pacientes[i, 1] Entonces
            encontrado = 1
            aux = i
        Fin Si
        i = i + 1
    Mientras Que encontrado = 0 y i < 40
    
    Si encontrado = 1 Entonces
        Escribir "Nombre y Apellido:", array_pacientes[aux, 0]
        Escribir "DNI: ", array_pacientes[aux, 1]
        Escribir "Edad: ", array_pacientes[aux, 2]
        Escribir "Vacuna a aplicar: ", array_pacientes[aux, 3]
        Escribir "Día: ", array_pacientes[aux, 5]
        Escribir "Horario: ", array_pacientes[aux, 4] "hs"
    SiNo
        Escribir "DNI no encontrado"
    Fin Si
    
Fin SubProceso

SubProceso op3(agenda_fun_3,array_reservar_turno,dia,turno)
	
	Definir verTurnos Como Caracter
	Definir i,j Como Entero
	
	Repetir
		Escribir "Desea ver la lista de turnos?: [S]=si [N]=no"
		Leer verTurnos
		si verTurnos <> "S" y verTurnos <> "s" y verTurnos <> "N" y verTurnos <> "n" Entonces
			Escribir "Error, vuelve a intentarlo."
		FinSi
	Hasta Que  verTurnos == "S" o verTurnos == "s" o verTurnos == "N" o verTurnos == "n"
	
	//Si el usuario ingresa un "S" o "s" le mostramos la lista de turnos actualizada donde aclaramos los que no estan disponibles.
	si verTurnos == "s" o verTurnos == "S" Entonces
		para i<- 0 hasta dia-1 Hacer
			Escribir "los turnos del dia " i+1 " son:"
			para j<- 0 hasta turno-1 Hacer
				Escribir  agenda_fun_3[i,j] "-" array_reservar_turno[i,j]
			FinPara
			Escribir " "
		FinPara
	FinSi
	
FinSubProceso


Funcion return_de_op4 = op4 (array_pacientes,pacientes,datos)
	
	Definir i,opcionn,j,k Como Entero
	pacientes<- 40
	datos <- 6
	Definir  aux Como Caracter
	
	///Muestro opciones para mostrar la lista ordenada y las valido
	Escribir "Como desea mostrar la lista: "
	Escribir "[1] por edad"
	Escribir "[2] por vacuna a aplicar"	
	Repetir
		Leer opcionn
		si opcionn <> 1 y opcionn <> 2 Entonces
			Escribir "Opcion seleccionada invalida."
		FinSi
	Mientras Que opcionn <> 1 y opcionn <> 2
	
	si opcionn == 2 Entonces
		opcionn = 3
	FinSi
	
	si opcionn == 1 Entonces
		opcionn = 2
	FinSi
	
	Segun opcionn Hacer
			///Muestro la lista ordenada por edad
		2:
			para i<- 0 hasta pacientes-2 Hacer
				para j<- i+1 hasta pacientes-1 Hacer
					si array_pacientes[i,opcionn] < array_pacientes[j,opcionn] Entonces
						para k<-0 hasta datos-1 Hacer
							aux <- array_pacientes[i,k]
							array_pacientes[i,k] <- array_pacientes[j,k]
							array_pacientes[j,k] <- aux
							
						FinPara
					FinSi
				FinPara
			FinPara
			
			para i<-0 hasta pacientes-1 Hacer
				para j <- 0 hasta datos -1 Hacer
					si array_pacientes[i,j] <> "Vacio" Entonces
						escribir " "
						j= pacientes - 1
						Para k<-0 Hasta datos - 1 hacer
							Escribir array_pacientes[i,k] " - " Sin Saltar
							
						Fin Para
					FinSi
				FinPara
				Escribir "" Sin Saltar
			FinPara
			///Muestro la lista ordenada por vacuna a aplicar
		3:
			para i<- 0 hasta pacientes-2 Hacer
				para j<- i+1 hasta pacientes-1 Hacer
					si array_pacientes[i,opcionn] > array_pacientes[j,opcionn] Entonces
						para k<-0 hasta datos-1 Hacer
							aux <- array_pacientes[i,k]
							array_pacientes[i,k] <- array_pacientes[j,k]
							array_pacientes[j,k] <- aux
						FinPara
					FinSi
				FinPara
			FinPara
			
			para i<-0 hasta pacientes-1 Hacer
				para j <- 0 hasta datos -1 Hacer
					si array_pacientes[i,j] <> "Vacio" Entonces
						Escribir " "
						j= pacientes - 1
						Para k<-0 Hasta datos - 1 hacer
							Escribir array_pacientes[i,k] " - " Sin Saltar
						FinPara
					FinSi
				FinPara
				Escribir " " Sin Saltar
			FinPara
			
		De Otro Modo:
			
	Fin Segun
	Escribir " "
FinFuncion
SubProceso op5 (agenda_fun_1,array_reservar_turno,array_pacientes,stock_neumococo_conjugada,stock_poliomielitis,stock_quintuple,stock_rotavirus,stock_meningococo,stock_triple_viral,turnos_lunes,turnos_martes,turnos_miercoles,turnos_jueves,turnos_viernes)	
	Definir menu Como Entero
	Definir i, total_turnos Como Entero
	menu <- 0
    total_turnos <- 0
	Mientras (menu <> 1 Y menu <> 2)
		Repetir
			Escribir "Elija la opción de listado deseada"
			Escribir "[1] Cantidad de turnos otorgados por día"
			Escribir "[2] Cantidad de vacunas a aplicar por vacuna"
			Leer menu
			si menu <> 2 o menu <> 1 Entonces
				Escribir "La opcion seleccionada es invalida."
			FinSi
		Mientras Que menu <> 2 y menu <> 1
		Limpiar Pantalla
	FinMientras
	
	Si menu==1 Entonces
		Escribir "Total de turnos otorgados por día: "
		Escribir "turnos los dias lunes:",8 - turnos_lunes
		Escribir "turnos los dias martes:",8 - turnos_martes
		Escribir "turnos los dias miercoles:",8 - turnos_miercoles
		Escribir "turnos los dias jueves:",8 - turnos_jueves
		Escribir "turnos los dias viernes:",8 - turnos_viernes
		
	SiNo
		Escribir "cantidad de vacunas a aplicar por vacuna:"
		Escribir "Neumococo conjugada:",10 - stock_neumococo_conjugada
		Escribir "Poliomielitis (IPV o Salk):",10 - stock_poliomielitis
		Escribir "Quintuple (o pentavalente):",10 - stock_quintuple
		Escribir "Rotavirus:",10 - stock_rotavirus
		Escribir "Meningococo:",10 - stock_meningococo
		escribir "Triple Viral:",10 - stock_triple_viral
		
	Fin Si
FinSubProceso
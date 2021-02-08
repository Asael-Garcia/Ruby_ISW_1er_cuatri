
	puts 'Fertilizantes Quimicos S.A'#mensaje de binvenida
	admin = 'SacaPapas3000'#establesco todas mis variables
	ContraseñaAdmin = 'ElFierroViejo.com'
	opcion=1
	continuarU = "s"
	generalFosfato=0
	generalUrea=0
	generalSulfato=0
	contadorSulfato=0
	contadorFosfato=0
	contadorUrea=0
	salidaSulfato=0
	salidaUrea=0
	salidaFosfato=0
	entradaFosfato=0
	entradaUrea=0
	entradaSulfato=0#hasta aqui son mis variables
	while continuarU=='s'#inicio mi proceso mientras
		puts 'Elige tu tipo de usuario: '
		puts '1. ADMINISTRADOR'#aparece mi primer "menu" que es un login que añadi por estetica
		puts '2. USUARIO'
		tipoUsuario=gets.to_i#variable de la respuesta del login
		system "cls"
		case tipoUsuario#proceso seugn para el login, donde depende de la respuesta ejecuta funciones diferentes entre ADMIN y USUARIO
			when 1#mi primera opcion, la cual es admin
				puts 'Porfavor ingresa tu usuario y contraseña'
				print 'Usuario: '
				usuario=gets.chomp#lanzo mensajes para indicar que ingrese su usuario y contraseña y estas se guardan en una variable
				print 'Contraseña: '
				contraseña=gets.chomp
				system "cls"
				if usuario==admin and contraseña==ContraseñaAdmin#inicio un proceso si, donde depende si las respuesta de usuario y contrasela conciden con las variables que anteriormente asigne
					opcion=1#vuelvo a poner el valor de opcion, ya que si hace una entrada a la ADMINISTRACION, luego al salir e ir a USUARIO, y otra vez intentar entrar a ADMIN, como a opcion le tuve que dar el valor de 5 para salir
						#entonces se me cierra el proceso mientras y ya no puedo hacer nada, por eso le vuelvo a dar el valor de 0 a opcion
					while opcion!= 5#procesi mientras se repetira hasta que opcion sea igual a 5
						puts 'Sistema de administracion de inventario de almacenamiento'#lanza un menu de opciones
						puts '1.- Registro de existencia inicial'
						puts '2.- Entrada de mercancia'
						puts '3.- Salida de mercancia'
						puts '4.- Reporte de existencia'
						puts '5.- Salir'
						puts 'Elija una opcion (1-5)'#Pide elejir una opcion
						opcion=gets.to_i#lee la opcion
						case opcion #inicia un proceso segun donde dependiendo de la respuesta de opcion ingresa en diferentes campos
							when 1#primera opcion donde se llena las existenia iniciales
								puts 'Registro de existencia inicial en toneladas__________________________'#mensaje de bienvenida
								#Para el Sulfato de amonio
								if contadorSulfato>0#aqui tengo un proceso si, para que no se puedan ingresar las variables iniciales mas de una vez, una vez se hace el registro no se puede cambiar o alterar
									puts 'Ya tienes un registro inicial de Sulfato de Amonio y este mismo no lo puedes alterar'#mensaje de error
								else#sino se cumple la condicion del if ocurre esto
									puts 'Existencia incial de Sulfato de Amonio'#mensaje donde pide la existencia iniial de sulfato
									inicialSulfato = gets.to_f#me da la existencia inicial
									while inicialSulfato<0 #proceso mientras, que hara que no se admintan numero negativos
										puts 'Cantidad invalida, por favor ingresa un numero valido'#lanza este mensaje volviendo a pedir la existencia en caso de ingresar numero negativos
										inicialSulfato=gets.to_f
									end
									contadorSulfato =  1#si se rellena este formulario una vez se le asigna al contador el valor de uno
								end 
								#Para la Urea
								#hago exactamente lo mismo que en el sulfato, pero cambio las variables
								if contadorUrea>0
									puts 'Ya tienes un registro inical de Urea y este no se puede alterar'
								else
									puts 'Existencia inicial de Urea: '
									inicialUrea=gets.to_f
									while inicialUrea<0
										puts 'Cantidad invalida, por favor ingrese un numero valido'
										inicialUrea=gets.to_f
									end
									contadorUrea = 1
								end
								#para el fosfato
								#hago lo mismo que para la urea y el sulfato, pero cambio las variables
								if contadorFosfato>0
									puts 'Ya tienes un registro incial de Fosfato y este no se puede alterar'
								else 
									puts 'Existencia incial de Fosfato: '
									inicialFosfato=gets.to_f
									while inicialFosfato<0
										puts 'Cantidad invalida, por favor ingrese un numero valido'
										inicialFosfato=gets.to_f
									end
									contadorFosfato = 1
								end
								puts 'La existencia incial ha sido registrada'#menciona que la existencia se ha registrado
							when 2 #mi segunda opcion donde entran la mercancia
								puts 'Entrada de Mercancia_______________________________________________________________'#mensaje de bienvenida
								puts 'Indique la cantidad en toneladas que entraran de cada producto'#indicaciones
								#para el sulfato
								if contadorSulfato==0 #establesco un si donde dependiendo de si el contador ya cambio a uno prosedera al else, pero si sigue siendo 0 lanza el mensaje de error
									puts 'Necesitamos que llenes anteriormente las existencia inciales de este producto'#el mensaje pide que se rellene las existencias inicales para poder continuar
								else #si el contador es superior a 1 pasa esto
									puts 'Entrada Sulfato de Amonio: '#mensaje donde pide la entrada de la mercancia
									entradaSulfato=gets.to_f
									while entradaSulfato<0 #si la mercancia es menor a 0 no lo dejara ingresarla y mandar un mensaje de error y pedira que la vuelva a ingresar
										puts 'Cantidad invalida, por favor ingrese un numero valido'#mensaje de error
										entradaSulfato=gets.to_f#pide de nuevo la cantidad de entrada
									end
								end
								#para La urea
								#hago lo mismo que en el Sulfato, pero cambio mis variables
								if contadorUrea==0
									puts 'Necesitamos que llenes anteriormente las existencias iniciales de este producto'
								else 
									puts 'Entrada de Urea: '
									entradaUrea=gets.to_f
									while entradaUrea<0
										puts 'Cantidad invalida, por favor ingrese un numero valido'
										entradaUrea=gets.to_f
									end
								end
								#para el fosfato
								##hago lo mismo que en el Sulfato y la urea, pero canbiando las variables
								if contadorFosfato==0
									puts 'Necesitamos que llenes anteriormente las existencias iniciales de este producto'
								else
									puts 'Entrada de Fosfato'
									entradaFosfato=gets.to_f
									while entradaFosfato<0 
										puts 'Cantidad invalida, por favor ingrese una cantidad valida'
										entradaFosfato=gets.to_f
									end
								end
								puts 'Se registraron exitosamente las entradas'#digo que se guardaron las entradas de mercancia
							when 3#mi tercera opcion donde se registran las salidas de mercancia
								puts 'Salida de mercancia en TONELADAS_______________________________________________________-'#mensaje de bienvenida
								if contadorSulfato==0 #establesco un si donde dependiendo de si el contador ya cambio a uno prosedera al else, pero si sigue siendo 0 lanza el mensaje de error
									puts 'Necesitamos que tengas existencias sobre el producto antes de retirar'#mensaje de error
								else #indico que pasara lo siguiente si no se cumple el requisito del IF
									puts 'Indique la cantidad de Sulfato de Amonio que desea retirar'#pido la cantidad a retirar de Sulfato
									salidaSulfato=gets.to_f
									while salidaSulfato>(entradaSulfato+inicialSulfato) or salidaSulfato<0 #si la cantidad de salida es mayor que la cantidad actual, que se obtiene al sumar la exitencia incial y la entrada de mercancia
											#si la salida supera ese numero, lanza el siguiente mensaje de error, donde dice que supera a las existencias actuales y pide volver a ingresarlas de manera correcta
											#o en caso de que la salida tambien sea un numero negativo soltara tambien un mensaje de error
										puts 'La cifra que ingresaste es mayor a la cifra de exitencia o es un numero negativo, porfavot ingresa una cifra menor y positivo ' #mensaje de error donde vuelve a pedir la salida de mercancia
										salidaSulfato=gets.to_f#salida de mercancia
									end
								end 
								#para la Urea
								#hago lo mismo que en el sulfato pero cambio las variables
								if contadorUrea==0 
									puts 'Necesitamos que tengas existencias sobre el producto antes de retirar'
								else 
									puts 'Indique la cantidad de Urea que quieres retirar'
									salidaUrea=gets.to_f
									while salidaUrea>(entradaUrea+inicialUrea) or salidaUrea<0
										puts 'La cifra que ingresaste es mayor a la cifra de exitencia o es un numero negativo, porfavot ingresa una cifra menor y positivo '
										salidaUrea=gets.to_f
									end
								end
								#para el fosfato
								#hago lo mismo que en la urea y el solfato pero cambio mis variables
								if contadorFosfato==0
									puts 'Necesitamos que tengas existencias sobre el producto antes de retirar'
								else
									puts 'Indique la cantidad de Fosfato que desea retirar: '
									salidaFosfato=gets.to_f
									while salidaFosfato>(entradaFosfato+inicialFosfato) or salidaFosfato<0
										puts 'La cifra que ingresaste es mayor a la cifra de exitencia o es un numero negativo, porfavot ingresa una cifra menor y positivo '
										salidaFosfato=gets.to_f
									end
								end
								puts 'Las salidas de mercancia se han registrado de manera exitosa'#digo que se guardaron las varibales de salida
							when 4#en mi cuarta opcion muestro la existencia general de todas las mercancias
								generalSulfato = (inicialSulfato + entradaSulfato - salidaSulfato)#hago la sumarotia de la entrada inicial de cada mercancia mas la existencia incial y le resto la salida de la mercancia
								generalUrea= (inicialUrea + entradaUrea - salidaUrea)#y el resultado de esas operaciones las guardo en una variable general
								generalFosfato= (inicialFosfato + entradaFosfato - salidaFosfato)#hago lo mismo para cada producto pero cambio las variables
								puts 'Reporte de Existencias de producto__________________________________________________________________'#mensaje de bienvenida
								puts 'Sulfato de Amonio: ', generalSulfato
								puts 'Urea: ', generalUrea#muestro las exitencias generales
								puts 'Fosfato: ', generalFosfato
							when 5#mi opcion cinco es de salida
								puts 'Hasta luego'#me despido
							else#en caso de no digitar alguna de las opciones dentro del rango 1-5 sale este mensaje de error
								puts 'Escriba una opcion valida (1-5)'#mensaje de error
						end#finalizo mi segun
						puts 'Presione ENTER para continuar'#aparecera este mensaje simpre la final despues de selecionar cualquier opcion dentro del segun
						continuar=gets.chomp#pido que de enter para continuar
						system "cls"
					end#si doy 5 finaliza mi proceso while
				else #en caso de el usuario y contraseña no coincidan con mis variables aparece este mensaje de error
					puts 'Usuario y/o contraseña incorrectos'#mensaje de error
				end#finaliza el si para el usuario y contraseña
			when 2#si seleciona el tipo de usuario 2 osea USUARIO aparece esta informacion
				puts 'Usuario: '#pido el usuario y contraseña
				usuario=gets.chomp
				puts 'Contraseña: '#contraseña
				contraseña=gets.chomp
				if usuario=='ElMarrano' and contraseña == 'ElAnsioso'#establezco una condicionante donde si la respuesta de usuario y contraseña que se dieron son iguales a ElMarrano y ElAnsioso, los dejara ingresar
					puts 'Tu permiso es solo de usuario, asi que solo te podremos mostrar las existencias actuales'#le dice su tipo de permiso
					puts '¿Deseas verlas? s/n'#le pide una respuesta de ver o no las existencias generales
					respuesta=gets.chomp#respuesta
					system "cls"
					if respuesta =='s'#si la respuesta es "s" sucedera lo siguiente
						generalSulfato = (inicialSulfato + entradaSulfato - salidaSulfato)
						generalUrea= (inicialUrea + entradaUrea - salidaUrea)
						generalFosfato= (inicialFosfato + entradaFosfato - salidaFosfato)
						puts 'Las exitencias actuales son de: '#muetra todas las existecias generales de cada producto
						puts 'Sulfato de Amonio: ', generalSulfato
						puts 'Urea: ', generalUrea
						puts 'Fosfato: ', generalFosfato
					else#en caso de que la respuesta sea "n" 
						puts 'Perfecto, presiona ENTER para continuar'#manda mensaje de despedida
						continuar=gets.chomp#pide dar enter para continuar
					end#finaliza el IF de la respuesta
				else#si el usuario y contraseña no son iguales a los datos que ingresare mandara el siguiente mensaje de error
					puts 'Usuario y/o contraseña incorrectos'#mensaje de error
				end#finaliza el if de usuario y contraseña
			else#si se ponne otra opcion distinta a la de ADMIN y USUARIO mandara mensaje de error
				puts 'Selecciona una de las opciones disponibles'#mensaje de error
		end#finaliza el primer segun, de tipos de usuarios
		puts '¿Desea volver a ingresar su usuario y contraseña o salir? s/n'#manda un mensaje por si quiere volver a repetir la informacion o no
		continuarU=gets.chomp#dependiendo de la respuesta se repite todo dentro del primer while o no
	end#finaliza el primer while
							
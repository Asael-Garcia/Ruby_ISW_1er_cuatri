opcion = 1
	puts 'Fertilizantes Quimicos S.A'
	admin = "SacaPapas3000"
	ContraseñaAdmin = "ElFierroViejo.com"
	usuario= "ElMarrano"
	contraseña= "ElAnsioso"
	continuarU = "s"
	GeneralFosfato=0
	GeneralUrea=0
	GeneralSulfato=0
	ContadorSulfato=0
	ContadorFosfato=0
	ContadorUrea=0
	while continuarU=='s'
		puts 'Elige tu tipo de usuario: '
		puts '1. ADMINISTRADOR'
		puts '2. USUARIO'
		TipoUsuario=gets.to_i
		case TipoUsuario
			when 1
				puts 'Porfavor ingresa tu usuario y contraseña'
				print 'Usuario: '
				usuario=gets.chomp
				print 'Contraseña: '
				contraseña=gets.chomp
				if usuario==admin and contraseña==ContraseñaAdmin
					while opcion!= 5
						puts 'Sistema de administracion de inventario de almacenamiento'
						puts '1.- Registro de existencia inicial'
						puts '2.- Entrada de mercancia'
						puts '3.- Salida de mercancia'
						puts '4.- Reporte de existencia'
						puts '5.- Salir'
						puts 'Elija una opcion (1-5)'
						opcion=gets.to_i
						case opcion 
							when 1
								puts 'Registro de existencia inicial en toneladas__________________________-'
								if ContadorSulfato>0
									puts 'Ya tienes un registro inicial de Sulfato de Amonio y este mismo no lo puedes alterar'
								else
									puts 'Existencia incial de Sulfato de Amonio'
									InicialSulfato = gets.to_f
									while InicialSulfato<0 
										puts 'Cantidad invalida, por favor ingresa un numero valido'
										InicialSulfato=gets.to_f
									end
								ContadorSulfato = (ContadorSulfato + 1)
								end 
								if ContadorUrea>0
									puts 'Ya tienes un registro inical de Urea y este no se puede alterar'
								else
									puts 'Existencia inicial de Urea: '
									InicialUrea=gets.to_f
									while InicialUrea<0
										puts 'Cantidad invalida, por favor ingrese un numero valido'
										InicialUrea=gets-to_f
									end
								ContadorUrea = (ContadorUrea + 1)
								end
								if ContadorFosfato>0
									puts 'Ya tienes un registro incial de Fosfato y este no se puede alterar'
								else 
									puts 'Existencia incial de Fosfato: '
									InicialFosfato=gets.to_f
									while InicialFosfato<0
										puts 'Cantidad invalida, por favor ingrese un numero valido'
										InicialFosfato=gets.to_f
									end
								ContadorFosfato = (ContadorFosfato + 1)
								end
								puts 'La existencia incial ha sido registrada'
							when 2
								puts 'Entrada de Mercancia_______________________________________________________________'
								puts 'Indique la cantidad en toneladas que entraran de cada producto'
								if ContadorSulfato=0 
									puts 'Necesitamos que llenes anteriormente las existencia inciales de este producto'
								else 
									puts 'Entrada Sulfato de Amonio: '
									EntradaSulfato=gets.to_f
									while EntradaSulfato<0 
										puts 'Cantidad invalida, por favor ingrese un numero valido'
										EntradaSulfato=gets.to_f
									end
								end
								if ContadorUrea=0
									puts 'Necesitamos que llenes anteriormente las existencias iniciales de este producto'
								else 
									puts 'Entrada de Urea: '
									EntradaUrea=gets.to_f
									while EntradaUrea<0
										puts 'Cantidad invalida, por favor ingrese un numero valido'
										EntradaUrea=gets.to_f
									end
								end
								if ContadorFosfato=0
									puts 'Necesitamos que llenes anteriormente las existencias iniciales de este producto'
								else
									puts 'Entrada de Fosfato'
									EntradaFosfato=gets.to_f
									while EntradaFosfato<0 
										puts 'Cantidad invalida, por favor ingrese una cantidad valida'
										EntradaFosfato=gets.to_f
									end
								end
								puts 'Se registraron exitosamente las entradas'
							when 3
								puts 'Salida de mercancia_______________________________________________________-'
								if ContadorSulfato=0 
									puts 'Necesitamos que tengas existencias sobre el producto antes de retirar'
								else 
									puts 'Indique la cantidad de Sulfato de Amonio que desea retirar'
									SalidaSulfato=gets.to_f
									while SalidaSulfato>(EntradaSulfato+InicialSulfato)
										puts 'La cifra que ingresaste es mayor a la cifra de exitencia, por favor ingresa una cifra mas baja'
										SalidaSulfato=gets.to_f
									end
								end 
								if ContadorUrea=0 
									puts 'Necesitamos que tengas existencias sobre el producto antes de retirar'
								else 
									puts 'Indique la cantidad de Urea que quieres retirar'
									SalidaUrea=gets.to_f
									while SalidaUrea>(EntradaUrea+InicialUrea)
										puts 'La cifra que ingresaste es mayor a la cifra de existencias, por favor ingrese una cifra mas baja'
										SalidaUrea=gets.to_f
									end
								end
								if ContadorFosfato=0
									puts 'Necesitamos que tengas existencias sobre el producto antes de retirar'
								else
									puts 'Indique la cantidad de Fosfato que desea retirar: '
									SalidaFosfato=gets.to_f
									while SalidaFosfato>(EntradaFosfato+InicialFosfato)
										puts 'La cifra que ingresaste es mayor a la cifra de existencias, por favor ingrese un numero mas bajo'
										SalidaFosfato=gets.to_f
									end
								end
							when 4
								GeneralSulfato = InicialSulfato + EntradaSulfato - SalidaSulfato
								GeneralUrea= InicialUrea + EntradaUrea - SalidaUrea
								GeneralFosfato= InicialFosfato + EntradaFosfato - SalidaFosfato
								puts 'Reporte de Existencias de producto__________________________________________________________________'
								puts 'Sulfato de Amonio: ', GeneralSulfato
								puts 'Urea: ', GeneralUrea
								puts 'Fosfato: ', GeneralFosfato
							when 5
								puts 'Hasta luego'
							else
								puts 'Escriba una opcion valida (1-5)'
						end
						puts 'Presione ENTER para continuar'
						continuar=gets.chomp
					end
				else 
					puts 'Usuario y/o contraseña incorrectos'
				end
			when 2
				puts 'Usuario: '
				usuario=gets.to_f
				puts 'Contraseña: '
				contraseña=gets.to_f
				if usuario=='ElMarrano' and contraseña == 'ElAnsioso'
					puts 'Tu permiso es solo de usuario, asi que solo te podremos mostrar las existencias actuales'
					puts '¿Deseas verlas? s/n'
					respuesta=gets.chomp
					if respuesta =='s'
						puts 'Las exitencias actuales son de: '
						puts 'Sulfato de Amonio: ', GeneralSulfato
						puts 'Urea: ', GeneralUrea
						puts 'Fosfato: ', GeneralFosfato
					else
						puts 'Perfecto, presiona ENTER para continuar'
						continuar=gets.chomp
					end
				else
					puts 'Usuario y/o contraseña incorrectos'
				end
			else
				puts 'Selecciona una de las opciones disponibles'
		end
		puts '¿Desea volver a ingresar su usuario y contraseña o salir? s/n'
		continuarU=gets.chomp
	end
							
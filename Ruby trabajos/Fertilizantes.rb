opcion=1
print "Fertilizantes Quimicos S.A"
admin = "SacaPapas3000"
ContraseñaAdmin="ElFierroViejo.com"
usuario="ElMarrano"
contraseña="ElAnsioso"
continuarU="s"
while continuarU=="s" 
	puts "Porfacor ingresa su usuario y contraseña"
	print "Usuario: "
	usuario=gets.chomp
	print "Contraseña: "
	contraseña = gets.chomp
	if usuario == admin and contraseña == ContraseñaAdmin 
		while opcion!=5 
			puts "Sistema de administracion de inventario de almacenamiento"
			puts '1.- Registro de existencia inicial'
			puts '2.- Entrada de mercancia'
			puts '3.- Salida de mercancia'
			puts '4.- Reporte de existencia'
			puts '5.- Salir'
			puts 'Elija una opción (1-5): '
			opcion=gets.to_i
			case opcion 
				when 1
					puts 'Registro de existencia inicial en toneladas_________________________________________________________________'
					puts 'Existencia incial de Sulfato de Amonio'
					InicialSulfato=gets.to_f
					while InicialSulfato<0 
						print 'Cantidad invalida, porfavor vuelva a ingrra una cantidad correcta'
						InicialSulfato=gets.to_f
					end
					puts 'Existencia incial de Urea'
					InicialUrea=gets.to_f
					while InicialUrea<0 
						puts 'Cantidad invalida, porfavor ingrese una cantidad correcta'
						InicialUrea=gets.to_f
					end
					puts 'Existencia incial de fosfato: '
					InicialFosfato=gets.to_f
					while InicialFosfato<0 
						puts 'Cantidad invalida, porfavor vuelva a ingresar una cantidad correcta'
						InicialFosfato=gets.to_f
					end
					puts 'La existencia incial ha sido registrada'
				when 2
					puts 'Entrada de mercancia__________________________'
					if InicialSulfato=0 
						puts 'Necesitamos que llenes anteriormente las existencias iniciales de Sulfato antes de registrar la llegada de nuevo producto'
					else
						puts 'Indique la cantidad de toneladas que entrara de cada producto'
						puts 'Entrada de Sulfato de amonio: '
						EntradaSulfato=gets.to_f
						while EntradaSulfato<0 
							puts 'No puedes ingresar numeros negaivos, por favor ingrea un numero postivo'
							EntradaSulfato=gets.to_f
						end
					end
					if InicialUrea=0  
						puts 'Necesitamos que llenes anteriormente la exitencia inicial de Urea'
					else
						puts 'Entrada de Urea'
						EntradaUrea=gets.to_f
						while EntradaUrea<0 
							puts 'No puedes ingresar numeros negaivos, por favor ingrea un numero postivo'
							EntradaUrea=gets.to_f
						end
					end
					if InicialFosfato= 0 
						puts 'Necesitamos que llenes anteriormente la existencia inicial de Fosfato'
					else 
						puts 'Entrada de Fosfato'
						EntradaFosfato=gets.to_f
						while EntradaFosfato<0
							puts 'No puedes ingresar nuemeros negativos, por favor ingresa un numero positivo'
							EntradaFosfato=gets.to_f
						end
					end
					puts 'Se registraron las entradas exitosamente'
				when 3
					puts 'Salida de mercancia_____________________________________________________________'
					if InicialSulfato==0 
						puts 'Necesitamos que tengas existencia sobre el Sulfato de Amonio para que puedas retirar alguna cantidad'
					else 
						puts 'Indique la cantidad de Sulfato de Amonio que desea retirar en toneladas'
						SalidaSulfato=gets.to_f
						while SalidaSulfato>GeneralSulfato 
							puts 'La cifra que ingresaste es mayor a la cifra de existencais, por favor digita una cifra mas pequeña'
							SalidaSulfato=gets.to_f
						end
					end
					if InicialUrea ==0 
						puts 'Necesitamos que tengas existencia de Urea para poder retirar alguna cantidad'
					else 
						puts 'Salida de urea: '
						SalidaUrea=gets.to_f
						while SalidaUrea>GeneralUrea 
							puts 'La cifra que ingresaste es mayot a la cifra de existencias, porfavor digita una cifra mas baja'
							SalidaUrea=gets.to_f
						end
					end
					if InicialFosfato==0 
						puts 'Necesitamos que tengas existencias iniciales de Fosfato para que puedas retirar alguna cantidad'
					else 
						puts 'Salida de Fosfato: '
						SalidaFosfato = gets.to_f
						while SalidaSulfato>GeneralSulfato   
							puts 'La cifra que ingresaste es mayor a la cifra de existencia, porfavor digita una cifra mas baja'
							SalidaSulfato=gets.to_f
						end
					end
				when 4 
					GeneralSulfato = InicialSulfato+EntradaSulfato-SalidaSulfato
					GeneralUrea = InicialUrea+EntradaUrea-SalidaUrea
					GeneralFosfato = InicialFosfato+EntradaFosfato-SalidaFosfato
					puts 'Reporte de existencia de producto__________________________________________________________________-'
					puts 'Sulfato de Amonio: ', GeneralSulfato
					puts 'Urea: ', GeneralUrea
					puts 'Fosfato: ', GeneralFosfato
				when 5 
					puts 'Hasta luego'
				else 
					puts'Escriba una opcion valida dentro del rango (1-5)'
			end
			puts 'Presione ENTER para continuar'
			continuar = gets.chomp
		end
	end
	if usuario==usuario and contraseña==contraseña 
		puts 'Tu permisosolo es de usuario asi que solo te podre mostrar las existencias que hay en este momento'
		puts '¿Deseas verlas? s/n'
		rasputia = gets.chomp
		if rasputia =='s' 
			puts 'Las existencia actuales son de: '
			puts 'Urea: ', GeneralUrea
			puts 'Sulfato de Amonio: ', GeneralSulfato
			puts 'Fosfato: ', GeneralFosfato
		else
			puts 'Perfecto, presiona enter para continuar'
			continuar= gets.chomp
		end
	end
	puts '¿Desea volver a ingresar su usuario y contraseña o sali? s/n'
	continuarU=gets.chomp
end

						
					
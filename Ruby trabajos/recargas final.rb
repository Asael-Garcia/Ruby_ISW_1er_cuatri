recargas=[[],[],[],[]]
companias=["1-Telcel","2.-Movistar","3.-Unefon","4.-AT&T"]
menuPrincipal=["1.- Recargar", "2.- Reporte de recargas", "3.- Salir"]
montos=[10,20,50,100,150,200,500]


def mostrar_menu(arreglo)
	for opcion in arreglo
		puts opcion
	end
end

def validar(mensaje)
	bandera=true
	while bandera
		begin
			valor=gets.to_i
			bandera=false
		rescue
			puts mensaje
		end
		return valor
	end
end


def registrar_recarga(_companias,montos,recargas)
	puts "Companias"
	mostrar_menu(companias)
	copania= validar("\n Elija una comañia (1 a 4): ")
	if cománia >0 and compania <5
		puts "Montos"
		mostrar_menu(montos)
		monto=validar("\n Indique el monto que recargó: ")
		if montos.include?(monto)
			recargas[compania -1].push(monto)
			puts "Recarga registrada"
		else
			puts "Monto no valido"
		end
	else
		puts "Opcion no valida"
	end
	return recargas
end


def mostrar_recargas(companias,recargas)
	puts "Recargas realizadas"
	for compania in (0...4)   
		puts companias[compania]
		total=0
		recargas[compania].each do |recarga|
			puts recarga
			total+=recarga
		end
	end
end


elecccion=0
while eleccion =!3
	puts "Centro de recargas ULTRA"
	mostrar_menu(menuPrincipal)
	eleccion = validar("\n Elija una opcion (1 a 3): ")
	case eleccion
		when 1
			recargas=registrar_tecarga(companias,montos,recargas)
		when 2
			mostrar_recargas(companias,recargas)
		when 3
			puts "Hasta luego"
		else
			puts "Elija una opcion valida (1 a 3)"
		end
		puts "Presiona ENTER para continuar"
		continuar=gets.chomp
end
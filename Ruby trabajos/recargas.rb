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
			puts mensaje
			valor=gets.to_i
			bandera=false
		rescue
			puts "Error"
		end
		return valor
	end
end


def registrar_recarga(companias,montos,recargas)
	puts "Companias"
	mostrar_menu(companias)
	compania= validar("\n Elija una comañia (1 a 4): ")
	if compania >0 and compania <5
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
		print "Total: ",total, "\n"
	end
end


eleccion=1
while eleccion !=3
	system "cls"
	puts "Centro de recargas ULTRA"
	mostrar_menu(menuPrincipal)
	eleccion = validar("\n Elija una opcion (1 a 3): ")
	case eleccion
		when 1
			system "cls"
			recargas=registrar_recarga(companias,montos,recargas)
		when 2
			system "cls"
			mostrar_recargas(companias,recargas)
		when 3
			system "cls"
			puts "Hasta luego"
		else
			system "cls"
			puts "Elija una opcion valida (1 a 3)"
		end
		puts "Presiona ENTER para continuar"
		continuar=gets.chomp
end
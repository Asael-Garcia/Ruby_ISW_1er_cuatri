
#VARIABLES

recargas = [[],[],[],[]]
companias = ["\n1.- Telcel", "\n2.- Movistar", "\n3.- Unefon", "\n4.- AT&T "]
menuPrincipal = ["\n1.- Recarga", "\n2.- Reporte de recargas", "\n3.- Salir "]
montos = [10, 20, 50, 100, 150, 150, 200, 500]


#FUNCIONES

#MENU
def mostrar_menu(list)
	list.each {|i| puts i }
end

#sumatoria
def sum(vector)
	res=0
	if vector==[]
		return 0
	else
		vector.each do |i|
		return res
		end
	end
end

#VALIDACION INCOMPLETA
def validar (mensaje)
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


#REGISTRO DE LA Recarga


def registrar_recarga(companias,montos,recargas)
	system "cls"
	puts "Compañias"
	mostrar_menu(companias)
	puts "\n Tu seleccion: "
	compania=validar("\n Elija una opcion valida: ")
	if compania >0 and compania <5
		puts "Montos"
		montos = [10, 20, 50, 100, 150, 150, 200, 500]
		
		mostrar_menu(montos)
		puts "\n Tu eleccion: "
		
		monto=validar("\n Elija una opcion valdia: ")
		
		flag=false
		montos.each do |i|
			if monto==i
				flag=true
			end
		end
		if flag
			recargas[compania-1].push(monto).
			puts "Recarga registrada"
		else
			puts "\n Monto no valido"
		end
	else
		puts "Operacion no valida"
	end
	puts "Presiona ENTER para continuar"
	continuar=gets.chomp
	system "cls"
	return recargas
end


#MOSTRAR Recargas

def mostrar_recargas_demo(companias,recargas)
	system "cls"
	puts "Recargas realizadas"
	for compania in (0...4) do 
		puts "\n", companias[compania]
		total=0
		recargas[compania].each do |recarga|
			puts recarga
			total+=recarga.to_i
		end
		puts "Total: ", total
	end
end

def mostrar_recargas(companias, recargas)
	puts "\nRecargas realizadas"
	for compania in (0..3)
		puts "\n#{companias[compania]}"
		for recarga in (0..recargas[compania].length-1)
			puts recargas[compania][recarga]
		end
		puts "Total #{sum(recargas[compania])}"
	end
end
#DESPEDIDA
$adios
def adios
	puts "Adios que te vaya muy bien"
end

#CODIGO GENERAL


eleccion=0
while eleccion !=3
	system "cls"
	puts "Centro de recargas ULTRA".center(20," ")
	mostrar_menu(menuPrincipal)
	print "\n"
	puts "Tu eleccion: "
	eleccion = gets.to_i 
	case eleccion
		when 1
			registrar_recarga(companias,recargas,montos)
		when 2
			mostrar_recargas(companias,recargas)
		when 3
			adios
		else
			puts "Elija una opcion valida (1 a 3) "
			puts "Presione ENTER para continuar"
			continuar=gets.chomp
	end
	puts "Presione ENTER para continuar"
	continuar=gets.chomp
	
end

	
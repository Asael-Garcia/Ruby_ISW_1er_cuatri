estudiantes = []
opciones = ["1.- Registrar estudiante", "2.- Lista de estudiantes","3.- Eliminar primero de la lista", 
			"4.- Eliminar último de la lista", "5.- Eliminar estudiante por posición", 
			"6.- Eliminar estudiante por nombre", "7.- Lista ordenada", "8.- Salir"]
eleccion = 1
while eleccion != 8
	system "cls"
	puts "Control escolar"
	puts "\n"
	opciones.each do |opcion|
		puts opcion
	end
	print "\nElija una opción: "
	eleccion = gets.to_i
	system "cls"
	case eleccion
		when 1
			puts "Registro de estudiante"
			print "\nNombre del estudiante: "
			estudiantes.push(gets.chomp.upcase)
			puts "Estudiante registrado"
		when 2
			puts "Lista de estudiantes"
			contador = 1
			estudiantes.each do |estudiante|
				print contador, ".- ",estudiante,"\n"
				contador += 1
			end
		when 3
			puts "Eliminar el primer estudiante"
			estudiantes.shift
			puts "Estudiante eliminado"
		when 4
			puts "Eliminar último estudiante"
			estudiantes.pop
			puts "Estudiante eliminado"
		when 5
			puts "Eliminar estudiante por posición"
			puts "\nLista de estudiantes"
			contador = 0
			estudiantes.each do |estudiante|
				print contador, ".- ",estudiante,"\n"
				contador += 1
			end
			posicion = -1
			print "\nIndica la posición del estudiante a eliminar: (0..",estudiantes.length - 1,") "
			posicion = gets.to_i
			if estudiantes.delete_at(posicion)
				puts "Estudiante eliminado"
			else
				puts "La posicion indicada no existe en la lista"
			end
		when 6
			puts "Eliminar estudiante por nombre"
			puts "\nLista de estudiantes"
			contador = 0
			estudiantes.each do |estudiante|
				print contador, ".- ",estudiante,"\n"
				contador += 1
			end
			posicion = -1
			print "\nIndica el nombre del estudiante a eliminar: "
			nombre = gets.chomp.upcase
			if estudiantes.delete(nombre)
				puts "Estudiante eliminado"
			else
				puts "El estudiante indicado no existe en la lista"
			end
		when 7
			puts "Lista de estudiantes ordenada"
			contador = 0
			estudiantes.sort.each do |estudiante|
				print contador, ".- ",estudiante,"\n"
				contador += 1
			end
		when 8
			puts "Hasta luego."
		else
			puts "Elija una opción válida (1-5)"

		
	end
	puts "Presiona ENTER para continuar ..."
	gets
end

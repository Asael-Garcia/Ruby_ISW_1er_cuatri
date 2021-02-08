continuar= "s"
	print "Bienvenido a la calculadora de areas y perimetro de figuas\n"
	while continuar == "s"
		print "Ahora necesito que selecciones alguna de las figuras que tenemos disponibles\n"
		print "Cuadrado (1)\n"
		print "Rectangulo (2)\n"
		print "Triangulo (3)\n"
		print "Circulo (4)\n"
		respuesta=gets.to_f
		case respuesta
			when 1
				print "Dame la medida de alguno de los lados: \n"
				lado=gets.to_f
				area=lado*lado
				perimetro=lado*4
				print "El area y perimetro de tu figura es de: \n"
				print "Area: ", area, "\n"
				print "Perimetro: ", perimetro, "\n"
			when 2
				print "Dame la medida de la base: \n"
				lado=gets.to_f
				print "Ahora dame la medida de la altura: \n"
				altura=gets.to_f
				area=lado*altura
				perimetro=lado*2+altura*2
				print "El area y perimetro de tu figura es de: \n"
				print "Area: ", area, "\n"
				print "Perimetro: ", perimetro, "\n"
			when 3
				print "Nota: Esta apartado solo funciona solo para triangulos rectangulos\n"
				print "Dame la medida de la base: \n"
				lado=gets.to_f
				print "Ahora dame la medida de la altura: \n"
				altura=gets.to_f
				area=(lado*altura)/2
				perimetro=lado*3
				print "El area y perimetro de tu figura es de: \n"
				print "Area: ", area, "\n"
				print "Perimetro: ", perimetro, "\n"
			when 4
				print "Nota: Esta apartado solo funciona solo para triangulos rectangulos\n"
				print "Dame la medida del radio: \n"
				lado=gets.to_f
				area=(3.14159265)*(lado*lado)
				perimetro=(3.14159326*3.14159265)*(lado)
				print "El area y perimetro de tu figura es de: \n"
				print "Area: ", area, "\n"
				print "Perimetro: ", perimetro, "\n"
			else
				print "Syntexis Error"
		end
	print "Deseas calcular el area y perimetro de otra figura (s/n)"
	continuar=gets.chomp
	end
	
			
		
		
	
	
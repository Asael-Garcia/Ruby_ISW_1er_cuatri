continuar = "s"
print "Bienvenido a tu calculadora"
while continuar == "s"
	print "Selecciona alguna de las opciones que tenemos\n"
	print "Suma (1)\n"
	print "Resta (2)\n"
	print "Multiplicacion (3)\n"
	print "Division (4)\n"
	respuesta = gets.to_f
	case respuesta
		when 1
			print "Ahora necestio que me des el primero numero que desees sumar: \n"
			numero1=gets.to_f
			print "Ahora necesito que me des el segundo numero que vas a sumar: \n"
			numero2=gets.to_f
			resultado = numero1 + numero2
			print "EL resultado que estas buscando es de: \n", resultado
		when 2
			print "Ahora necestio que me des el numero al que le vayas a restar: \n"
			numero1=gets.to_f
			print "Tambien necesito el numero que vas a restar al primer numero rey: \n"
			numero2=gets.to_f
			resta = numero1 - numero2
			print "El resultado que estas buscando es de: \n", resta
		when 3
			print "Necestio que me des el primer numero que desees multiplicar: \n"
			numero1=gets.to_f
			print "Ahora dame el segundo numero que vas a multiplicar por el primero: \n"
			numero2=gets.to_f
			resultado= numero1 * numero2
			print "El resultado que estas buscando es de: ", resultado
		when 4
			print "Ahora rey, dame el numero que desees dividir: \n"
			numero1=gets.to_f
			print "Ahora dame el divisor del primer numero rey: \n"
			numero2=gets.to_f
			division= numero1/numero2
			print "El resultado que estasa buscando es de: \n", division
		else
			print "Syntaxis Error"
		end
	print "\n Deseas seguir calculando otra operacion (s/n): "
	continuar = gets.chomp
end
	

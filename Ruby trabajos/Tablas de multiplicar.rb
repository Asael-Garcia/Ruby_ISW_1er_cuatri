continuar="s"#asigno el valor de continuar, el cual es "s"
print "Bienvenido a la calculadora de tablas de multiplicar"#doy un mensaje de bienvenida
while continuar=="s"#abro el mientras (while), y le indico que hará todo el proceso que contiene siempre y cuando continuar sea igual a "s"
	print "Nota: Esta calculadora de tablas de multiplicar solo arrojara resultados dentro del rango 1-10"#doy una nota sobre los resultados
	print "Ingresa el numero: "#indico que me de el numero al cual obtendremos sus tablas de multiplicar
	numero=gets.to_f#le doy un valor de entero de flotante a el numero que ingresara, osea aceptara numeros con decimales
	for contador in (1...10)#inicio el ciclo para(for), donde contador hara una cuenta dentro de 1-10, automaticamente hara saltos de 1 en 1
		multiplicacion=numero*contador#le doy un valor a multiplicacion, el cual se define mediante un proceso, el cual es numero ingresado por el contador
		puts "#{numero} * #{contador} = #{multiplicacion}"#doy un mensaje de salida en el cual, aparecera el numero ingresado, despues un * que simbolizara el por
		#despues hago que apareca el contador, el cual hace saltos de 1 en 1 dentro del rango 1-10, pongo un igual y que me arroje el resultado de la multiplicacion correspondiente
	end#finalizo el proceso para (for)
	print "Desea continuar(s/n): "#pregunto si desea continuar
	continuar=gets.chomp#lee el valor de continuar, ademas de que le digo que es una letra, y dependiendo con la respuesta si encaja con el valor de continuar que le di al inicio
	#se repetiria el proceso, de lo contrario se terminara el proceso
end#finalizo el proceso mientras (while)
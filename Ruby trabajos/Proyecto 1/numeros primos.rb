continuar="s"
print "Bienvenido a la comprabadoa de numeros primos\n"
print "Aqui digitaras un numero y te diremos si es primo o no\n"
while continuar == "s"
	print "\nPor favor digita el numero: "
	numerito=gets.to_i
	contador=0
	for i in (1...10) do 
		if numerito%i==0 
			contador=contador+1
		end
	end
	
	if contador==2 
		print numerito, " es un numero primo\n"
	else
		print numerito, " no es un numero primo\n"
	end
	print "\nDeseas continuar calculando otros numeros? (s/n): "
	continuar=gets.chomp
end
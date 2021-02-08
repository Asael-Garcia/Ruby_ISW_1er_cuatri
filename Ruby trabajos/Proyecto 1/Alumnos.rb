continuar="s"
print "Bienvenido a la calculadora de alumnos aprobados\n"
while continuar == "s"
	print "Necesito que me des la calificacion del primer parcial: \n"
	parcial1=gets.to_f
	print "Ahora ocupo la calificacion del segundo parcial: \n"
	parcial2=gets.to_f
	final= (parcial1+parcial2)/2
	if final >=6
		print "La calificacion del alumno es de ", final, " asi que afortunadamente el alumno APROBO"
		print "\nEstado: APROBADO"
		print "\nCalificcion final: ", final
	else 
		print 
		print "La calificacion del alumno es de ", final, " asi que por desgracia el alumno NO APROBO"
		print "\nEstado: DESAPROBADO"
		print "\nCalificcion final: ", final
	end
	print "\nDeseas calcular otra calificaccion final (s/n): "
	continuar=gets.chomp
end
	
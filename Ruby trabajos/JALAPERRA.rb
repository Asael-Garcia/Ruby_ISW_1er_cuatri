def validar
    bandera = true
    while bandera==true
        begin
			puts "hola, dame un numero"
            valor = gets.to_i
            bandera = false
        rescue
            puts "Solamente se admiten números"  
        end
        
    end
	return valor
end


hola=validar
if hola>0
	print "Que pedo marichulo"
else
	print "No hay pan"
end

print "Dame un numero"
numerito=gets.to_i
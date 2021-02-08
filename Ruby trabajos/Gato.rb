tablero=[["-","-","-"],["-","-","-"],["-","-","-"]]


#determino mis funciones

#FUNCION PARA MOSTRAR EL TABLERO
def mostrar_tablero(tablero)
    for i in (0...3)
        for j in (0...3)
            print tablero[i][j]
			print " "
		end
		print "\n"
	end
end

#funcion para validar
def validar
    bandera = true
	valor=0
    while bandera==true
 
        puts "Entran solo numeros"
		valor = gets
		if /^[0-2]$/.match(valor)#uso una exoprecion regular que genera un patron, donde si al inicio de la cadena hay un numero o mas numero del uno
		#al tres, y al final de la cadena tambien hay un numero o más del uno al tres, la cadena ingresada es valida. BY EMANUEL
			valor=valor.to_i
			bandera=false
		else
			puts "Solo se aceptan numeros"
		end 
    end
	
	return valor
end


#FUNCION DE JUGADA PRINCIPAL
def pedir_jugada(tablero)
	bandera=0#esta bandera sirve para contar el numero de jugadas que se llevan
	bandera_ganador=false#y esta para saber si hay o no un ganador aun
	while bandera<9 or bandera_ganador==false#inicio un while donde pongo dos condicionantes para que se repita
		contadorX=2#este contador sirve para que en caso de que X se equivoque en las cordenadas pueda volver a ingresarlas 
		while contadorX!=1#aplico el contador anterior con este while
			puts "Jugador X, dame tu jugada, empezando por la fila: "#pido las coordenadas
			filaX=validar
			puts "Ahora dame en la columna: "
            columnaX=validar
            jugadorX="X"#doy el valor de jugador X
			if filaX>=0 and filaX<=2 and columnaX>=0 and columnaX<=2#este if sirve para verificar que las cordenadas esten dentro del limite que se esta dando
				if tablero[filaX][columnaX]=="-"#para saber si hay una linea dentro de las cordenadas dadas anteriormente
                    tablero[filaX][columnaX]=jugadorX;#si hay una linea añado en las cordenas el valor de jugador X
                    mostrar_tablero(tablero);#muestro el tablero
                    contadorX=1;#aumento mi contador para que se rompa el segundo while
				else
					puts "Esta casilla esta ocupada, vuelve a ingresar las cordenadas"#si no se cumple el if anterior manda este mensaje de error
					contadorX=2#para que se vuelva a repetir el while de X
				end
			else#en caso de que las cordenadas no esten dentro del rango manda el siguiente mensaje de errro
				puts "Opciones invalidas, por favor ingresa valores del 0-2"#mensaje de error
				contadorX=2#contador para que se repita el while de X
			end 
		end
		bandera=bandera+1#si se cumplio exitosamente el while anteriro, ya se hizo una jugada, asi que el contador de las jugadas aumenta en 1
        bandera_ganador=mostrar_ganador(tablero)#verifico si hay o no ganador
        puts "\n Numero de pocisiones ocupadas: ", bandera#muestro las pocisiones ocupadas hasta el momento
		if bandera_ganador==true#si ya hay un gandor rompo el programa con el break
			break
		else#de lo contrario continua el ciclo
			if bandera==9#ahora, si el contador de las jugadas llega a 9 digo que no hay ganador y rompo el programa
				puts "Juego terminado, no hay ganador"
				break
			end
			#si no se cumple el if anterior pasa a las siguientes lineas de codigo donde se realiza exatamente lo mismo que lo que se hizo con el jugador X, pero cambiando algunos valores por O
			contadorO=2
			while contadorO!=1
				puts"Jugador 0, dame tu jugada, empezando por la fila: "
				filaO=validar
				puts "Ahora dame en la columna: "
                columnaO=validar
                jugadorO="O"
				if filaO>=0 and filaO<=2 and columnaO>=0 and columnaO<=2
					if tablero[filaO][columnaO]=="-"
                        tablero[filaO][columnaO]=jugadorO
                        mostrar_tablero(tablero)
                        contadorO=1
                    else
                        puts "Esta ocupada la casilla que solicitas, vuelve a ingresar las cordenadas"
                        contadorO=2
					end
				else
					puts "Numeros invalidos, porfavor, vuelva a ingresar las cordenadas"
				end
			end
			bandera=bandera+1#como se hizo una jugada aumenta el contador de las jugadas
            bandera_ganador=mostrar_ganador(tablero)#verifico si hay o no ganador
            puts "\n Numero de pocisiones ocupadas: ", bandera#muestro las pocisiones ocupadas
			next#este es el equivalente a continue en python, es para que se vuelva a "repetir" el ciclo principla
		end
		break#rompo mi programa
	end
end



#funcion para determinar ganador, aqui determino a mi ganador insertando todas las maneras posibles de ganar en cordenas, y dependiendo de si hay una X o una O en ese lugar dira quien es el ganador
#esto gracias al elsif que tiene ruby se me facilito mucho
def mostrar_ganador(tablero)
    bandera_ganador=false#como aun no hay ganador mi bandera ganador es falsa desde el incio
    #para la fila 1
    if tablero[0][0]=="X" and tablero[0][1]=="X" and tablero[0][2]=="X"#condicinante de las cordenadas y el valor que debe estar en ellas
        ganador="¡¡¡Gana el jugador X!!!"#guardo en una varible una mensaje del ganador
        bandera_ganador=true#como si hay ganador mi bandera ganador se vuelve verdadera
		#hago exacamente lo mismo para todas los demas posibles resultados
    elsif tablero[0][0]=="O" and tablero[0][1]=="O" and tablero[0][2]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    #para la fila 2
    elsif tablero[1][0]=="X" and tablero[1][1]=="X" and tablero[1][2]=="X"
        ganador="¡¡¡Gana el jugador X!!!"
        bandera_ganador=true
    elsif tablero[1][0]=="O" and tablero[1][1]=="O" and tablero[1][2]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    #para la fila 3
    elsif tablero[2][0]=="X" and tablero[2][1]=="X" and tablero[2][2]=="X"
        ganador="¡¡¡Gana el jugador X!!!"
        bandera_ganador=true
    elsif tablero[2][0]=="O" and tablero[2][1]=="O" and tablero[2][2]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    #para columna 1
    elsif tablero[0][0]=="X" and tablero[1][0]=="X" and tablero[2][0]=="X"
        ganador="¡¡¡Gana el jugador X!!!"
        bandera_ganador=true
    elsif tablero[0][0]=="O" and tablero[1][0]=="O" and tablero[2][0]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    #para columna 2
    elsif tablero[0][1]=="X" and tablero[1][1]=="X" and tablero[2][1]=="X"
        ganador="¡¡¡Gana el jugador X!!!"
        bandera_ganador=true
    elsif tablero[0][1]=="O" and tablero[1][1]=="O" and tablero[2][1]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    #para columna 3
    elsif tablero[0][2]=="X" and tablero[1][2]=="X" and tablero[2][2]=="X"
        ganador="¡¡¡Gana el jugador X!!!"
        bandera_ganador=true
    elsif tablero[0][2]=="O" and tablero[1][2]=="O" and tablero[2][2]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    #para diagonal 1\
    elsif tablero[0][0]=="X" and tablero[1][1]=="X" and tablero[2][2]=="X"
        ganador="¡¡¡Gana el jugador X!!!"
        bandera_ganador=true
    elsif tablero[0][0]=="O" and tablero[1][1]=="O" and tablero[2][2]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    #para diagonla 2/
    elsif tablero[0][2]=="X" and tablero[1][1]=="X" and tablero[2][0]=="X"
        ganador="¡¡¡Gana el jugador X!!!"
        bandera_ganador=true
    elsif tablero[0][2]=="O" and tablero[1][1]=="O" and tablero[2][0]=="O"
        ganador="¡¡¡Gana el jugador O!!!"
        bandera_ganador=true
    else
        ganador="Aun no hay ganador..."#Digo que aun no hay ganador alguno
        bandera_ganador=false#si no se cumplio alguna de las condiciones anteriores, la bandera ganador sigue siendo falsa
	end
    print ganador#imprimo el ganador
    return bandera_ganador#regreso la bandera jugador, que se conectara en la variable que se encuentra en cel codigo principal, para decidir si se rompe o no el programa
end
#llamo a mi funcion principal
pedir_jugada(tablero)
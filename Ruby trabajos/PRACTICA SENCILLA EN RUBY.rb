#PRACTICA SENCILLA EN RUBY

def suma(numero1, numero2)
    return numero1+ numero2, numero1 * numero2#la comilla hace que haga dos retornos distintos, aunque sea valores distintos dentro de la operacion de cada uno
    #esto gracias a la comilla
end

def principal()
    print "Escribe el primer numero: "
    a=gets.to_f
    print "Escribe el segundo numero: "
    b=gets.to_f
    s,m=suma(a,b)#almaceno en las variable s, la primera operacion realisada en el return, y en la m la segunda operacion
    #para separar los dos valores en las pociciones que quiera retornar uso una comilla
    print "La suma de los dos numeros es: ",s, " y la multiplicacion es: ",m
    puts "\nPresione enter para continuar"
    continuar=gets
end
system "cls"
principal()


def suma2(numero1, numero2)
    return numero1+ numero2, numero1 * numero2#la comilla hace que haga dos retornos distintos, aunque sea valores distintos dentro de la operacion de cada uno
    #esto gracias a la comilla
end

def principal2()
    print "Escribe el primer numero: "
    a=gets.to_f
    print "Escribe el segundo numero: "
    b=gets.to_f
    s=suma2(a,b)#si pongo solo una letra, los dos return me los regresara en forma de vector
    print "La suma de los dos numeros es: ",s[0], " y la multiplicacion es: ",s[1]
    #para imprimir lo que deseo, la suma a la multiplicacion, determino la pocicion en el vector la operacion que quiero que me muestre
end
system "cls"
principal2()
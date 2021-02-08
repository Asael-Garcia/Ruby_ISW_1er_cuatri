#variables globales en ruby


def pedir_nombre()

    print "Dame tu nombre por favor bella persona: "
    $nombre=gets.chomp
    print "\n Ahora dime tu edad: "
    $edad=gets.to_i
end

def saludo()
    print "Asi que eres ", $nombre, " y tu edad es ", $edad, " un gusto conocerte"
end

pedir_nombre()
saludo()
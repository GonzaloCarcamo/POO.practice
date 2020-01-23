# Ejercicio 2:
# 
# Se pide crear una clase punto para representar puntos dentro de un mapa, los puntos
# tendrán coordenada x y una coordenada y
# Se pide que la clase punto debe poder ser inicializada en cualquier posición.La posición
# de un puntos puede ser vista fuera de la clase pero no debe poder ser cambiada desde
# fuera.
# Se pide que la clase punto tenga un método avanzar que permita incrementar la
# coordenada x en una unidad.

class Punto 
    attr_reader :x, :y
    def initialize (x, y)
        @x = x
        @y = y 
    end
    def avanzar
        @x +=1 
    end
end

# gonzalo@gonzalo-Inspiron-3583:~/rails/ejercicio2$ irb
# 2.6.3 :001 > require_relative 'punto'
#  => true 
# 2.6.3 :002 > coordenada = Punto.new(1, 5)
#  => #<Punto:0x0000555c724b8a60 @x=1, @y=5> 
# 2.6.3 :003 > coordenada.x
#  => 1 
# 2.6.3 :004 > coordenada.y
#  => 5 
# 2.6.3 :005 > puts "#{coordenada.x}, #{coordenada.y}"
# 1, 5
#  => nil 
# 2.6.3 :006 > coordenada.avanzar
#  => 2 
#Ejercicio 1:
#Se pide crear la clase producto, un producto tiene nombre y stock, por defecto si el stock no
#se especifica será cero, el nombre se define al momento de crearlo.

class Producto 
    attr_accessor :nombre, :stock
    def initialize (nombre, stock)
        @nombre = nombre
        @stock = 0
    end
end

# gonzalo@gonzalo-Inspiron-3583:~/rails/ejercicio1$ irb
# 2.6.3 :001 > require_relative 'producto'
#  => true 
# 2.6.3 :002 > chocolate = Producto.new('trencito', 100)
#  => #<Producto:0x000055b82b9f5608 @nombre="trencito", @stock=0> 
# 2.6.3 :003 > chocolate.stock = 100
#  => 100 
# 2.6.3 :004 > chocolate.nombre
#  => "trencito" 
# 2.6.3 :005 > chocolate.stock
#  => 100 
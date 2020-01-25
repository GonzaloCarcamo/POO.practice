# simular el número de un dado lanzado (roll), y que arroje el
#número al azar obtenido


class Dice
    attr_reader :number, :counter
    @@counter = 0
    
    def initialize
        @counter = 0
        roll
        @@counter += 1
    end
    
    def roll #simula jugada con dado
        @counter += 1
        @number = rand(1..6)
    end

    def Dice.counter #indica cuántos dados se han ingresado
        @@counter
    end
end


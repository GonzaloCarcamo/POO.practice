#Crear clases para animales y otorgarles características
#en base a su desplazamiento y alimentación.

require_relative 'diet'
require_relative 'module'


class Animal
    include Skills::Walker
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Bird < Animal
    include Skills::Flying
    include Diet::Herbivore
end

class Mammal < Animal
    include Skills::Walker
    include Diet::Carnivorous
end

class Insect < Animal
    include Skills::Flying
    include Diet::Herbivore
end

class Penguin < Bird
    include Skills::Swimmer
    include Skills::Walker
end

class Pigeon < Bird
    include Skills::Swimmer
    include Skills::Walker
end

class Duck < Bird
    include Skills::Swimmer
    include Skills::Walker
end

class Dog < Mammal
    include Diet::Carnivorous
    include Skills::Walker
end

class Cat < Mammal
    include Diet::Carnivorous
    include Skills::Walker
end

class Cow < Mammal
    include Diet::Herbivore
    include Skills::Walker
end

class Fly < Insect
    include Diet::Herbivore
    include Skills::Flying
end

class Butterfly < Insect
    include Diet::Herbivore
    include Skills::Flying
end

class Bee < Insect
    include Diet::Herbivore
    include Skills::Flying
end

# gonzalo@gonzalo-Inspiron-3583:~/oop/desafio_polimorfismo/ejercicio2$ irb
# 2.6.3 :001 > require_relative 'animal.rb'
#  => true 
# 2.6.3 :002 > maya = Bee.new('maya')
#  => #<Bee:0x0000559a1133c448 @name="maya"> 
# 2.6.3 :003 > maya.class
#  => Bee 
# 2.6.3 :004 > maya.class.superclass
#  => Insect 
# 2.6.3 :005 > maya.eat
#  => "Puedo comer plantas!" 
# 2.6.3 :006 > maya.fly
#  => "Estoy volandooooo!" 
# 2.6.3 :007 > maya.land
#  => "Estoy cansado de volar, voy a aterrizar" 
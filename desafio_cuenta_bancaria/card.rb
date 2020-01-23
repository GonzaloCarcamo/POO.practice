class Card
    attr_reader :numero, :color
    def initialize
        @color = ['T', 'C', 'D', 'E'].sample
        @numero = Random.rand(1..13)
    end

    def reveal
        "#{numero}-#{color}"
    end
end

class Play
    attr_accessor :play, :nombre

    def initialize
        @play = []
        5.times do
            @play << Card.new.reveal
        end
    end
end

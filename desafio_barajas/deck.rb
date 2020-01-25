require_relative 'card'

class Deck
    def initialize
        @cards = []
        # crear todas las cartas y agregar a @cards
        ['C', 'D', 'E', 'T'].each do |color|
            (1..13).each do |number|
                @cards << Card.new(number, color)
            end
        end
end

    def shuffle
        @cards.shuffle!
    end

    def pop
        @cards.shift
    end


    def draw
        draw_cards = []
        5.times { card << pop }
        return draw_cards
    end
end
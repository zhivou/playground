class Deck
    attr_accessor :cards, :dealt_index
    
    def initialize(set_of_cards)
        @cards = set_of_cards
        @dealt_index = 0
    end

    def shuffle
    end

    def dealt
    end

    def cards_left
    end
end

class MGTDeck(Deck)
    MAX = 200
    MIN = 70

    def put_card_back
    end

    def delt(card_count)
    end
end

class Card
    attr_accessor :suit, :face_value, :value

    def initialize(suit, face_value)
        @suit = suit
        @face_value = face_value
    end

    def print
    end
end

class MGTCard(Card)
    attr_accessor :ability, :damage

    def initialize()
        @suit
    end

    def print_ability
        puts(ability)
    end
end

class BlackJackCard(Card)
    def print_value
        case @face_value
        when 0
            10
        when 1
            2
        when 2
            3
    end
end

class Player
    attr_accessor :score, :cards

    def print
    end
end

class GameHandler
    SUITES = ['Heart', 'Club', 'Spade', 'Diamond']
    FACES_VALUES = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    def initialize(game)
        @game = game
        start_game
    end

    def start_game

    end
end



a = new BlackJackCard
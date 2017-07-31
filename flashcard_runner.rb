require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/card_generator'


filename = "cards.txt"
cards = CardGenerator.new(filename).cards
# card_1 = Card.new("What is 5 + 5?", "10")
# card_2 = Card.new("What is Rachel's favorite animal?", "Tigers")
# card_3 = Card.new("What is Mike's middle name?", "nobody knows")
# card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Bieber")

deck = Deck.new(cards)
round = Round.new(deck)
round.start

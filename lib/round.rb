require 'pry'
require './lib/deck'
require './lib/card'
require './lib/guess'

class Round

  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @index = 0
  end

  def current_card
    deck.cards[@index]
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
  end

#
#
# record guess iteration
#   index
#   while index < 4
#     if index = 0
#       #card_1
#     elsif index = 1
#       #card_2
#     #elsif index = 2
#       #card_3
#     #elsif index = 3
#       #card_4
#     @index += 1
#   end


end

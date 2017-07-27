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
    @index += 1
    @guesses.last
  end

  def number_correct
    counter = 0
    guesses.each do |guess|
      if guess.correct? == true
        counter += 1
      end
    end
    counter
  end

  def decimal_convert_correct
    (number_correct.to_f / guesses.count.to_f) * 100

  end

  def percent_correct
    decimal_convert_correct.to_i
  end


  def start
    p "Welcome! You're playing with #{deck.count} cards."
    p "-------------------------------------------------"
    cycle_cards
    p "***** GAME OVER! *****"
    p "You had #{number_correct} correct guesses out of #{guesses.count} for a score of #{percent_correct}%."
  end

  def cycle_cards
    until deck.count == guesses.count
      p "This is card number #{@index + 1} out of #{deck.count}"
      p "Question: #{current_card.question}"
      user_input = gets.chomp
      p record_guess(user_input).feedback
    end
  end
end

require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require 'pry'

class CardGenerator


  attr_reader :filename, :cards

  def initialize(filename)
    @cards = []
    read_cards(filename)
  end

  def read_cards(filename)
    File.foreach filename do |line|
      card = line.chomp.split(",")
      @cards << Card.new(card[0],card[1])
    end
  end

  #
  # card_1 = Card.new("What is 5 + 5?", "10")
  # card_2 = Card.new("What is Rachel's favorite animal?", "Tigers")
  # card_3 = Card.new("What is Mike's middle name?", "nobody knows")
  # card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Bieber")
  #

end

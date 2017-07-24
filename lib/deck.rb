require './lib/card'
require './lib/guess'
require 'pry'


class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
    #why does this instance variable assigned to cards instead of an empty array?
  end

  def count
    #does this need to be hard coded or can I initialize a count method?
    cards.count
  end


end

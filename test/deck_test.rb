require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require 'pry'

class DeckTest < MiniTest::Test

def test_does_it_exist?
  deck = Deck.new([])

  assert_instance_of Deck, deck
end

def test_cards
  card_1 = Card.new("What is the capital of Alaska?", "Juneau")
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
  deck = Deck.new([card_1, card_2, card_3])


  assert_equal [card_1, card_2, card_3], deck.cards
end

def test_cards_count
  card_1 = Card.new("What is the capital of Alaska?", "Juneau")
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
  deck = Deck.new([card_1, card_2, card_3])

  assert_equal 3, deck.count
end



end

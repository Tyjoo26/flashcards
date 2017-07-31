
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'

class CardGeneratorTest < MiniTest::Test

  def test_does_it_exist?
    cards = CardGenerator.new

    assert_instance_of CardGenerator, cards
  end

  def card_insert
    cards = CardGenerator.new

    assert_instance_of CardGenerator, cards.cards
  end
end

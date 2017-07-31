
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'

class CardGeneratorTest < MiniTest::Test

  def test_does_it_exist?
    cards = CardGenerator.new("./cards.txt")

    assert_instance_of CardGenerator, cards
  end

  def test_does_it_load?
    cards = CardGenerator.new("./cards.txt")

    assert File.exist?("./cards.txt")
  end

  def test_card_insert

    cards = CardGenerator.new("./cards.txt")

    assert_equal 4, cards.cards.count
  end
end

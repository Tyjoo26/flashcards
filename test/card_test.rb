require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < MiniTest::Test

  def test_does_it_exist?
    card = Card.new

    assert_instance_of Card, card
  end

  def test_question?
    card = Card.new

    assert_equal "What is the capital of Alaska?", card.question
  end

end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < MiniTest::Test

  def test_does_it_exist?
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_instance_of Card, card
  end

  def test_question?
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_answer?
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_equal "Juneau", card.answer
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require 'pry'


class GuessTest < MiniTest::Test
  def test_does_it_exist?
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Guess, guess
  end

  def test_guess_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Juneau", guess.response
  end

  def test_is_it_correct?
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert true, guess.correct?
  end

  def test_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_new_arguments_is_it_incorrect?
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    refute  guess.correct?
  end
end

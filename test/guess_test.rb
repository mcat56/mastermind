require_relative 'test_helper'

class GuessTest < MiniTest::Test

  def setup
    @guess = Guess.new('brgy')
  end

  def test_it_exits
    assert_instance_of Guess, @guess
  end

  def test_feedback
    assert_equal 'BRGY', @guess.guess
  end

end

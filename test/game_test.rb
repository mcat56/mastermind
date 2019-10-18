require_relative 'test_helper'

class GameTest < MiniTest::Test

  def setup
    @game = Game.new(4)
    @game.sequence = 'RBRB'
    @guess = Guess.new('ybgr')
    @game_intermediate = Game.new(6)
    @game_advanced = Game.new(8)
  end

  def test_it_exits
    assert_instance_of Game, @game
  end

  def test_start
    assert_equal "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?", @game.start
  end

  def test_initialize
    assert_equal [], @game.guesses
    assert_equal 0, @game.guess_count
    assert_match(/[A-Z]{4}/, @game.sequence)
    assert_match(/[A-Z]{6}/, @game_intermediate.sequence)
    assert_match(/[A-Z]{8}/, @game_advanced.sequence)
  end

  def test_match_guess
    assert_equal [2,1], @game.match_guess(@guess)
  end

end

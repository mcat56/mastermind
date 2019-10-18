class Game
  attr_reader :guess_count, :guesses
  attr_accessor :sequence

  def initialize(number = 4)
    @sequence = GenerateCode.generate_code(number)
    @guess_count = 0
    @guesses = []
    @winner = false
  end

  def start
    "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?"
  end

  def match_guess(guess)
    @guesses << guess
    correct_elements = guess.guess.count(@sequence)
    correct_positions = 0
    guess.guess.chars.each do |char|
      if guess.guess.index(char) == @sequence.index(char)
        correct_positions += 1
      end
    end
    [correct_elements, correct_positions]
  end

  def feedback
    @game.guess_count += 1
    "#{@guesses.last.guess} has #{match_guess(@guesses.last)[0]} of the correct elements with #{match_guess(@guesses.last[1])} in the correct positions. You've taken #{@guess_count} guess(es)."
    if match_guess(guess) == [4, 4]
      @winner = true
    end
  end


end

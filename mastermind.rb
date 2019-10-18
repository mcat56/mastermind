def welcome
  "Welcome to MASTERMIND\n\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit>?"
end

while true
  print welcome
  select = gets.chomp.downcase

  if select = 'q'
    break
  end

  if select == 'i'
    File.foreach('instructions.txt', 'r') do |line|
      print line
    end
  end

  if select == 'p'
    game = Game.new

    print game.start

    until game.winner do

      guess = false
      string = gets.chomp

      until guess == true
        if string.length < 4
          p 'Your guess was too short. Try again.'
          string = gets.chomp
        elsif string.length > 4
          p 'Your guess was too long. Try agan.'
          string = gets.chomp
        elsif string.length == 4
          guess = true
        end
      end

      guess = Guess.new(string)

      p game.feedback(guess)





























  end
end

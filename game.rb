class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  WINNER_MESSAGE = "You shut da box!"

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end

  def over?
    box.is_box_shut? || box.can_flip_for?(dice.map(&:value).reduce(:+))
  end

  def start!
    prepare_next_round
  end

  def prepare_next_round
    dice.each(&:roll!)
  end

  def play
    box.starting_tiles
    print "You rolled: "
    dice.each do |die|
      print "#{die.value} "
    end
    puts "\n"
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
    prepare_next_round
  end

  def results
    box.is_box_shut? ? WINNER_MESSAGE : "Game over, you did not shut da box."
  end

end

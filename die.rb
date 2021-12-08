class Die

  attr_reader :number_of_sides
  attr_accessor :value

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
    @value = 1
  end

  def roll!
    self.value = rand(1..number_of_sides)
  end

  def makeRoll
    roll!
  end

end

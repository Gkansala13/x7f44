class Box

  attr_reader :shut_tiles, :number_of_tiles

  def initialize(number_of_tiles)
    @number_of_tiles = number_of_tiles
    @tiles = []
    @number_of_tiles.times do |i|
      @tiles << i + 1
    end
    @shut_tiles = []
  end
  
  def starting_tiles
    print '| '
    get_tiles().each do |tile|
      print tile.to_s + ' | '
    end
    print "\n"
  end

  def is_box_shut?
    @tiles.empty? && @shut_tiles.length == number_of_tiles
  end

  def can_flip_for?(value)
    false
  end

  def get_tiles
    @tiles
  end

  def to_s
    "Box"
  end

end

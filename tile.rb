class Tile
  attr_accessor :val, :revealed, :bomb
  def initialize(val)
    @bomb = (rand(10) == 1)
    @val = val
    @revealed = false
  end

  def display
    if revealed
      print "X"
    else
      print "*"
    end
  end

end

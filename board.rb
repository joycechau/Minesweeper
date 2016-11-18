require_relative "tile"

class Board
  attr_accessor :grid

  def initialize(size = 9)
    @grid = Array.new(size) {Array.new(size) {Tile.new("b")}}
  end

  def render
    @grid.each do |row|
      row.each do |tile|
        tile.display
      end
      puts "\n"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  board.render
end

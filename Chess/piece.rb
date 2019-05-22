require "colorize"

class Piece
  attr_accessor :pos

  def initialize(pos, color)
    @pos = pos
    @color = color
    @moves = []
  end

  def moves(pos)
    
  end

  def valid_move?(pos, end_pos)
    #reference board
  end

  def inspect
    "#{self.class}"
  end

end

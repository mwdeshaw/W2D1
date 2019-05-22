require_relative "piece.rb"
require_relative "board.rb"
require_relative 'slideable.rb'

class Rook < Piece
  include Slideable

  def initialize(pos, color, board)
    super(pos, color)
    @board = board
  end

  def valid_rook_moves(pos)
    result_arr = []
    if @board[pos].is_a?(Rook)
      all_possible_moves = self.straights(pos)
    end
    
    all_possible_moves
  end

end
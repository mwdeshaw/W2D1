require_relative "piece.rb"

class NullPiece < Piece
  def initialize
    @position = nil
  end

  def inspect
    "null_piece"
  end


end
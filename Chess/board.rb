require_relative "piece.rb"
require_relative "null_piece.rb"
require 'byebug'
class Board
  attr_reader :board
  
  def initialize
    @board = Array.new(8) { Array.new(8) }

    @board.each_with_index do |row, i|
      row.each_with_index do |col, j|
        if i == 0 || i == 1
          @board[i][j] = Piece.new
        elsif i == 6 || i == 7
          @board[i][j] = Piece.new
        else 
          @board[i][j] = NullPiece.new
        end
      end
    end

    # @pieces = []
  end

  def move_piece(start_pos, end_pos)
    if !self[start_pos].is_a?(NullPiece)
      self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    else
      raise "Invalid move. Start position does not have piece"
    end
  end

  def [](pos)

    row, col = pos
    if row > 7 || row < 0 || col > 7 || col < 0
      raise "Invalid move. End position is not on the board"
    end
    @board[row][col]
  end

  def []=(pos,val)
    row, col = pos
    @board[row][col] = val
  end

  def valid_pos?(pos)
    row, col = pos
    if row > 7 || row < 0 || col > 7 || col < 0
      return false
    end

    true
  end


end
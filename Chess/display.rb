require 'colorize'
require_relative 'cursor.rb'
require_relative 'board.rb'
require 'byebug'
class Display
  attr_reader :board, :cursor

  def initialize
    @board = Board.new
    @cursor = Cursor.new([0,0], board)
  end

  def render
    cursor.get_input
    board.board.each_with_index do |row, i|
      new_row = []
      row.each_with_index do |col, j|
        pos = [i,j]
        if !board[pos].is_a?(NullPiece)
          new_row << "P"
        else
          new_row << "-"
        end
      end

      puts new_row.join(" ")
    end

        # if j.even?
        #   board[[i,j]].to_s.red
        # else
        #   board[[i,j]].to_s.blue
        # end
  end

end
 
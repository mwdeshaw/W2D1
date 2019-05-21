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
    board.board.each_with_index do |row, i|
      new_row = []
      row.each_with_index do |col, j|
        pos = [i,j]

        new_str = "-"

        if !board[pos].is_a?(NullPiece)
          new_str = "P"
        end

        if cursor.cursor_pos == pos
          new_str = new_str.colorize(:background => :green)
        end

        new_row << new_str


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
 
display = Display.new
while true
  display.cursor.get_input
  display.cursor.cursor_pos
  display.render

end

module Slideable
  def diagonals(pos)
    left_to_right = []
    x, y = pos
    (0..7).each do |i|
      left_to_right << [(x+i) % 8, (y+i) % 8]
    end
    left_to_right = left_to_right.reject {|new_pos| new_pos == pos}

    bottom_right_to_left = []
    7.downto(0).each do |j|
      if x-j >= 0 && y-j >= 0
        bottom_right_to_left << [x-j, y+j]
        bottom_right_to_left << [y+j, x-j]
      end
    end    
    right_to_left = bottom_right_to_left
    right_to_left = right_to_left.reject {|new_pos| new_pos == pos}
    
    all_diags = left_to_right + right_to_left
  end

  def straights(pos)
    x, y = pos
    all_straights = []

    (0..7).each do |i|
      all_straights << [x, i]
      all_straights << [i, y]
    end

    all_straights.reject { |new_pos| new_pos == pos }
  end

end

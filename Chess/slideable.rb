require 'byebug'
module Slideable

  def diagonals(pos)
    all_diags = self.top_right_to_left(pos) + top_left_to_right(pos) + bottom_right_to_left(pos) + bottom_left_to_right(pos)
    all_diags
  end

  def top_right_to_left(pos) #
    x, y = pos

    top_right_to_left = []
    i = 0
    until y - i == 0 || x - i == 0
      i += 1
      top_right_to_left << [x-i,y-i]
    end
    top_right_to_left
  end

  def bottom_left_to_right(pos)# 
    x, y = pos

    bottom_left_to_right = []
    n = 0
    until y + n == 7 || x + n == 7
      n += 1
      bottom_left_to_right << [y+n,x+n]
    end
    bottom_left_to_right
  end

  def top_left_to_right(pos) # top_left_right
    x, y = pos

    top_left_right = []
    j = 0
    until y - j == 0 || x + j == 7
      j += 1
      top_left_right << [y-j,x+j]
    end
    top_left_right
  end

  def bottom_right_to_left(pos) #bottom_right_to_left
    x, y = pos

    bottom_right_to_left = []
    k = 0
    # debugger
    until y - k == 0 || x + k == 7
      k += 1
      bottom_right_to_left << [x+k,y-k]
    end
    bottom_right_to_left    
  end

  def straights(pos)
    x, y = pos
    all_straights = []

    (y-1).downto(0).each do |i|
      all_straights << [x,i]
    end
    
    (y+1).upto(7).each do |j|
      all_straights << [x,j]
    end

    (x-1).downto(0).each do |k|
      all_straights << [k,y]
    end

    (x+1).upto(7).each do |n|
      all_straights << [n,y]
    end

    all_straights
  end

end

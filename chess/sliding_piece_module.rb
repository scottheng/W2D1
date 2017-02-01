module SlidingPiece

  def moves #Returns array of all possible moves
    possible_moves = []

    move_dirs.each do |delta|
      current_position = self.position
      condition = true

      while condition
        first = current_position.first + delta.first
        last =  current_position.last + delta.last
        current_position = [first, last]

        if in_bounds?(current_position) && is_valid?(current_position)
          possible_moves << current_position
        else
          condition = false
        end

      end
    end
    p possible_moves
  end


  def is_valid?(pos) # Need to find out if the piece is ours?
    @board[pos].name == "n" ? true : false
  end


  def in_bounds?(pos)
    x, y = pos
    return false if x < 0 || x > 7
    return false if y < 0 || y > 7
    return true
  end

end




# diagonal = [[1, 1],[1, -1], [-1, 1], [-1, -1]
# horizontal = [[1, 0], [-1,0]]
# vertical = [[0,1], [1,0]]

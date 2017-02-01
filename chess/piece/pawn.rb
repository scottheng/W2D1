require_relative "../piece.rb"

class Pawn < Piece

  def initialize()
    super(name, position, board)
    @moved = false
  end

  DIAGONAL = [[1,-1], [1,1]]
  UP = [0,1]
  OPTION_UP = [0,2]


  def moves
    possible_moves = []

    DIAGONAL.each do |delta|
      current_position = new_position(self.position, delta)

      if in_bounds?(current_position) && check_diagonal?(current_position)
        possible_moves << current_position
      end
    end

    possible_up = [UP]
    possible_up.concat(OPTION_UP) unless @moved

    possible_up.each do |delta|
      current_position = new_position(self.position, delta)

      if in_bounds?(current_position) && is_valid?(current_position)
        possible_moves << current_position
      end
    end
    possible_moves
  end

  def new_position(current_position, delta)
    first = current_position.first + delta.first
    last = current_position.last + delta.last
    current_position = [first, last]
  end

  def check_diagonal(pos)
     !is_valid?(pos)
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

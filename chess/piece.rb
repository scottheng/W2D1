
class Piece
  attr_reader :name, :position

  def initialize(name, position, board)
    @name = name
    @position = position
    @board = board
  end

  #def moves
    #update position
#  end

  def valid_move?(move)
    # Array of all posiible moves  , check the board and map out the possible moves from there.
  end

  def null?
    false
  end

end

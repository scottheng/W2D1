require_relative "piece.rb"
require_relative "sliding_piece_module.rb"

class Rook < Piece
  include SlidingPiece

  def initialize(name, position, board)
    super(name, position, board)
  end

  def move_dirs
    [[1, 0], [-1,0], [0,1], [0,-1]]
  end


end

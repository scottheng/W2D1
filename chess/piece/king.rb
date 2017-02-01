require_relative "../piece.rb"
require_relative "stepping_piece_module.rb"

class King < Piece
  include SteppingPiece

  def initialize(name, position, board)
    super(name, position, board)
  end

  def move_dirs
    [[1, 0], [-1,0], [0,1], [0,-1], [1, 1], [1, -1], [-1, 1], [-1, -1]]
  end


end

require_relative "../piece.rb"
require_relative "stepping_piece_module.rb"

class Knight < Piece
  include SteppingPiece

  def initialize(name, position, board)
    super(name, position, board)
  end

  def move_dirs
    [[-2, 1], [-2, -1], [2, 1], [2, -1], [1, -2], [1, 2], [-1, -2], [-1, 2]]
  end


end

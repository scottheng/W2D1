require_relative "../piece.rb"

class Pawn

  def moves

  end


  def is_valid?(pos)

  end


  def in_bounds?(pos)
    x, y = pos
    return false if x < 0 || x > 7
    return false if y < 0 || y > 7
    return true
  end

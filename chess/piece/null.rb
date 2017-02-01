require_relative "../piece.rb"
require "singleton"

class Null < Piece
  include Singleton
  # attr_reader :name
  def initialize
    @name = " "
  end

  def null?
    true
  end
end

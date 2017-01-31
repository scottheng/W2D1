require_relative "board.rb"
require_relative "cursor.rb"
require "colorize"

class Display

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
  end

  def render
    
  end

end

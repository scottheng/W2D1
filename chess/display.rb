require_relative "board.rb"
require_relative "cursor.rb"
require_relative "queen.rb"
require "colorize"

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    puts "-------"

    i = 0
    @board.grid.transpose
    while i < @board.grid.length
      rows_str = ""
      j = 0
      while j < @board.grid.length
        piece = @board.grid[i][j]

        if [i,j] == @cursor.cursor_pos
          unless @cursor.selected
            #### Using Name but will change to actual piece
            board_element = piece.name.colorize(:color => :red) ## when selected == false
          else
            board_element = piece.name.colorize(:color => :green) ## seleceted == true
          end
        else
          board_element = piece.name
        end
        rows_str += "#{board_element} | "
        j += 1
      end
      i += 1
      puts "| #{rows_str}"
    end
  end

  def test
    100.times do
      system("clear")
      render
      @cursor.get_input
    end
  end

end

b = Board.new()
d = Display.new(b)


b[[1,1]]= Queen.new("Q", [1,1], b)
#b[[1,1]].moves
d.test

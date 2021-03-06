require_relative "piece.rb"
require_relative "null.rb"

class Board
    attr_reader :grid
    def initialize()
      @grid = Array.new(8) { Array.new(8) }

      create_board

    end

    def move_piece(start_pos, end_pos)
      raise "No piece in start position" unless in_bounds(start_pos)
      raise "End position not valid" unless in_bounds(end_pos)

      current_piece = self[start_pos]
      other_piece = self[end_pos]

      self[start_pos] = other_piece
      self[end_pos] = current_piece
    end

    def create_board
      row = 0
      while row < @grid.length
        col = 0
        while col < @grid.length
          if [0,1,6,7].include?(row)
            self[[row,col]] = Piece.new("j", [row, col], @grid)
          else
            self[[row,col]] = Null.instance
          end
          col += 1
        end
        row += 1
      end

    end

    def in_bounds(pos)
      x, y = pos
      return false if x < 0 || x > 7
      return false if y < 0 || y > 7
      return true
    end

    def [](pos)
      x, y = pos
      @grid[x][y]
    end

    def []= (pos, piece)
      x, y = pos
      @grid[x][y] = piece
    end

end

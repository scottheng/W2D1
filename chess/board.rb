require_relative "piece.rb"

class Board
    attr_reader :grid
    def initialize()
      @grid = Array.new(8) { Array.new(8) {nil} }
    end

    def move_piece(start_pos, end_pos)

      raise "Board Parameter Error" unless valid_move?(end_pos)

      current_piece = self[start_pos]
      other_piece = self[end_pos]

      unless valid_move?(end_pos)
        raise "Board Parameter Error"
      end

      self[start_pos] = other_piece
      self[end_pos] = current_piece
    end

    def valid_move?(pos)
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

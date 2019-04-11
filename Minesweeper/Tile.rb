require_relative "board.rb"

class Tile
    attr_reader :value
    attr_accessor :revealed

    def initialize(revealed, value)
        @value = value 
        @revealed = false
        @board = Board.new
    end

    def reveal
        @revealed = true
    end

    def neighbors(pos)
        x, y = pos
        fringe = []
       ((x-1)..(x+1)).each do |row|
            ((y-1)..(y+1)).each do |col|
                if (0 <= x) && (x <= 8) && (0 <= y) && (y <= 8)
                    fringe << [row, col]
                end
            end
        end

        bomb_counter = 0
        fringe.each do |pos|
            if @board[pos].value == bomb      
                bomb_counter += 1
            end
        end

    end

end
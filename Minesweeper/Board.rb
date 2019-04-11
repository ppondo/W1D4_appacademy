require_relative "tile.rb"

class Board

    def initialize(size=9)
        @board = Array.new(9) {Array.new(9, Tile.new())} #what does tile take in?
    end

    def [](pos)
        x, y = pos
        return @board[x][y]     #self or @board?
    end

    def []=(pos, bomb)
        x, y = pos
        @board[x][y].value = bomb
    end

    def populate    #around 1/5 of the board is populated with bombs
        
        x = rand(0..9)
        y = rand(0..9)
        pos = x, y
        @board[pos]

    end

end
require_relative "./Stepable.rb"
class King < Piece
    include Stepable
    MOVES = [[1,0], [1,1], [1,-1], [0, -1], [0,1], [-1,-1], [-1,0], [-1,1]]

    def symbol
        "♚"
    end

    def move_dirs
        diagonal_dirs
        horizontal_dirs
    end
end

require_relative "./Stepable.rb"
class Knight < Piece
    include Stepable
    MOVES = [[-1,-2], [-2,-1], [-1,2], [-2,1], [1,2], [2,1], [1,-2], [2,-1]]

    def symbol
        "♘"
    end
end
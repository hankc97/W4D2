class Knight < Piece
    include Stepable
    MOVES = [[-1,-2], [-2,-1], [-1,2], [-2,1], [1,2], [2,1], [1,-2], [2,-1]]

end
require_relative "./Stepable.rb"
class King < Piece
    include Stepable
    MOVES = [[1,0], [1,1], [1,-1], [0, -1], [0,1], [-1,-1], [-1,0], [-1,1]]

end

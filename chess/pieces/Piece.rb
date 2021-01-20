class Piece
    def initialize(color, board, pos)
        raise "invalid color: Enter Black or White" unless %i(white black).include?(color)
        # raise "invalid position for Board" unless board.valid_pos?(pos)

        @color = color
        @board = board
        @pos = pos

        # board.place_piece(self, pos)
    end

    def valid_moves
        # @pos 
    end

    def empty?
        false
    end
    
    


end


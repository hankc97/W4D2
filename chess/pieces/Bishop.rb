require_relative "./Sliding_Pieces.rb"
class Bishop < Piece
    include Sliding_Pieces
    
    def symbol
        "♗"
    end

    def move_dirs
        diagonal_dirs
    end
    
    protected 
    

# use the Piece subclass' `#move_dirs` method to get this info
      # for each direction, collect all possible moves in that direction
        # and add them to your moves array 
        # (use the `grow_unblocked_moves_in_dir` helper method)
   

end
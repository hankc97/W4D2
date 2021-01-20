require_relative "./Sliding_Pieces.rb"
class Rook < Piece
    include Sliding_Pieces 

    def move_dirs
        horizontal_dirs
    end

end
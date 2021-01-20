require_relative "./Sliding_Pieces.rb"
class Queen < Piece
    include Sliding_Pieces

    def move_dirs
        diagonal_dirs
        horizontal_dirs
    end

end

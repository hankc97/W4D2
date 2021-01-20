module Sliding_Pieces


    def horizontal_dirs
        # Stores CONSTANT of all horz moves .freeze 
    end

    def diagonal_dirs
        # Stores CONSTANT of all diag moves .freeze
    end

    def moves

        moves = []

        # this method below references the object reference of the Piece(queen, king, rook)'s method of move_dir
        # move_dir of the object piece stores either (def horizontal_dirs or def diagonal_dirs) in this current method
        # move_dirs.each do |x,y|
            grow_unblocked_moves_in_dir()
    end

    private


    def grow_unblocked_moves_in_dir(dx, dy)
        moves = []
        current_x, current_y = pos

        # in loop, increment pieces at starting position one step in given position
        # stop loop if new position is !valid
        # if new pos is empty? moves << new pos 
        # if new position is occupied with piece of opposite color, add moves << new pos
        # if new pos is occupied with piece of same color, stop looping

        # return final moves array

    end
end
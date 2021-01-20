module Sliding_Pieces
    HORIZONTAL_DIRS = [
        [1, 0], # Up
        [-1, 0], # Down
        [0, -1], # left
        [0, 1], # Right
    ].freeze

    DIAGONAL_DIRS = [
        [1, -1], # UP LEFT
        [1, 1], # UP RIGHT
        [-1, -1], # DOWN LEFT
        [-1, 1], # DOWN RIGHT
    ].freeze

    def horizontal_dirs
        HORIZONTAL_DIRS
        
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        moves = []
        move_dirs.each do |x , y|
            p "x: #{x}   & y: #{y}"
            
        end
        # this method below references the object reference of the Piece(queen, king, rook)'s method of move_dir
        # move_dir of the object piece stores either (def horizontal_dirs or def diagonal_dirs) in this current method
        # move_dirs.each do |x,y|
            # grow_unblocked_moves_in_dir()

            # create array to collect moves

    # iterate over each of the directions in which a slideable piece can move
      # use the Piece subclass' `#move_dirs` method to get this info
      # for each direction, collect all possible moves in that direction
        # and add them to your moves array 
        # (use the `grow_unblocked_moves_in_dir` helper method)

    # return the final array of moves (containing all possible moves in all directions)
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
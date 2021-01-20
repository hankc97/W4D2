require 'byebug'
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
            # moves << [x,y]
            moves.concat(grow_unblocked_moves_in_dir(x, y)) 
            p moves

        end

    # iterate over each of the directions in which a slideable piece can move
      # use the Piece subclass' `#move_dirs` method to get this info
      # for each direction, collect all possible moves in that direction
        # and add them to your moves array 
        # (use the `grow_unblocked_moves_in_dir` helper method)

    # return the final array of moves (containing all possible moves in all directions)
    end

    private

    def grow_unblocked_moves_in_dir(dx, dy)
        val = true
        new_moves = []
        current_x, current_y = pos
        
        while val
            current_x += dx
            current_y += dy
            new_pos = [current_x, current_y]
            if board.valid_pos?(new_pos)
                if board.empty?(new_pos)
                    new_moves << new_pos
                elsif self.color != board[new_pos].color
                    new_moves << new_pos
                    val = false
                else
                    val = false
                end
            else
                val = false
            end
        end
        return new_moves
    end
end
# 1) Add currentx + dx, currenty + dy, 
# 2) Check: if both new positions valid?(0, 7)
# 3) Check: if both new positions are empty space == " " or NuLLPiece
    # a) If not empty
        #   If piece.color == self.color 
                # (break)
        #   else (not same color) : moves << new position 

# 1) check valid horizontal moves to right , y + 1 then check if valid?
# 

# in loop, increment pieces at starting position one step in given position
# stop loop if new position is !valid
# if new pos is empty? moves << new pos 
# if new position is occupied with piece of opposite color, add moves << new pos
# if new pos is occupied with piece of same color, stop looping

# return final moves array
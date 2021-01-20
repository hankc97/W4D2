require_relative 'pieces.rb'

class Board
    attr_reader :sentinel
    attr_reader :rows

    def initialize(fill_board = true)
        # instance --> Singleton, Represents all empty spaces and saves memory since only one instance is made
        # All empty spots points to the empty NullPiece.instance
        @sentinel = NullPiece.instance
        make_starting_grid(fill_board)

    end

    def place_piece(piece, pos)
        raise 'position not empty' unless empty?(pos)

        self[pos] = piece
    end

    def [](pos)
        raise 'invalid pos' if !valid_pos?(pos)
    
        row, col = pos
        @rows[row][col]
    end
    
    def []=(pos, piece)
        raise 'invalid pos' if !valid_pos?(pos)
    
        row, col = pos
        @rows[row][col] = piece
    end

    def valid_pos?(pos)
        pos.all? { |coordinate| coordinate.between?(0, 7)}
    end


    def empty?(pos)
        self[pos].empty?
    end

    def dup
        # cannot call .dup on same @board because it will reference the same object 
        # we must instantiate new Board to test moves
        new_board = Board.new(false)

        pieces.each do |piece|
            # pass each piece a color, the new_board, and position
            piece.class.new(piece.color, new_board, piece.pos)
        end

        new_board
    end



    private

    def move_piece(start_pos, end_pos)
        

    end

    def fill_back_row(color)
        back_pieces = [
            Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook
        ]

        # fill row 7 with :white row 0 with :black
        i = (color == :white ? 7 : 0)
        back_pieces.each_with_index do |piece_class, j|
            piece_class.new(color, self, [i, j])
        end
    end

    def fill_pawns_row(color)
        # fill row 6 with :white row 0 with :black
        i = color == :white ? 6 : 1
        8.times {|j| Pawn.new(color, self, [i,j])}

    end

    def make_starting_grid(fill_board)
        @rows = Array.new(8) {Array.new(8, sentinel)}
        return unless fill_board

        %i(white black).each do |color|
            fill_back_row(color)
            fill_pawns_row(color)
        end
    end


end


b = Board.new
p b.rows

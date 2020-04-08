require_relative "piece"

class Board
    def place_pawns
        i = 0 
        while i < 8 
         @board[1][i] = :P #Pawn instance
         @board[6][i] = :P #Pawn instance
        i += 1
        end 
    end

    def place_pieces 
        pieces = [:R, :k, :B, :Q, :K, :B, :k, :R]

        i = 0
        pieces.each do |piece|
            @board[0][i] = piece
            @board[7][i] = piece
            i += 1
        end
        
    end

    def initialize
        @board = Array.new(8){ Array.new(8, :X) } #:X represents where Nil should be for nullpiece
        place_pawns
        place_pieces
        #rook :R
        #knight :k
        #bishop :B
        #queen  :Q
        #king   :K
        #bishop
        #knight 
        #rook 
        #array of pieces? iterate through two rows at the same time
        #each incrementation will place piece in next spot
    end

    def print_board 
        @board.each do |row|
            puts row.join("  ")
        end
    end

    def move_piece(start_pos, end_pos)
        # current_piece = 
        p @board[start_pos]
        #rook start_pos = [0, 0], repalce current pos w/:X and end pos with current piece
        #end_pos = [2, 0]
        #pos check to see if its empty or taken 
        #raise error if taken, #valid move check for piece 
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, new_piece)
        row, col = pos
        @board[row][col] = new_piece
    end

end
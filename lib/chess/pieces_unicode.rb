module PiecesConstant
    WHITE_KING = "\u2654"
    WHITE_QUEEN = "\u2655"
    WHITE_ROOK = "\u2656"
    WHITE_BISHOP = "\u2657"
    WHITE_PAWN = "\u2659"

    BLACK_KING = "\u265A"
    BLACK_QUEEN = "\u265B"
    BLACK_ROOK = "\u265C"
    BLACK_BISHOP = "\u265D"
    BLACK_KNIGHT = "\u265E"
    BLACK_PAWN  = "\u265F" 
    
    #to string
    def to_s
             "Piece: #{self.class.name}\n" +
             "Color: #{@color}\n" +
             "Unicode: #{@unicode}" 
    end

end
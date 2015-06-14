#this is just the cell
#no fancy things. If there is a piece then just place the piece
#if there is no piece then replace it with a lightly shaded square

class Cell
    LIGHT_BLOCK = "\u2591"
    BLACK_BLOCK = "\u2588"
    attr_accessor :color, :piece
    def initialize(color, piece = false)
       if(piece)  #if it is false set it to to light blcok
               @color = piece
       else
               if(color == :black)
                   @color = BLACK_BLOCK
               elsif(color == :white)
                   @color = LIGHT_BLOCK
               end
       end
    end

    def to_s
        @color
    end

end

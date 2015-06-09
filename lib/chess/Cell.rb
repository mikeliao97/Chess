#this is just the cell
#no fancy things. If there is a piece then just place the piece
#if there is no piece then replace it with a lightly shaded square

class Cell
    LIGHT_BLOCK = "/u2591"
    BLACK_BLOCK = "/u2588"
    attr_accessor :value, :piece
    def initialize(color, piece == false)
       if(piece)  #if it is false set it to to light blcok
               @value = piece
       else
               if(color == :black)
                   @value = BLACK_BLOCK
               elsif(color == :white)
                   @value = LIGHT_BLOCk
               end
       end
    end

end


#maybe implement later in order to make it look better
class InCompleteCell

    BlACK_SPACE = "\u2592"
    attr_accessor :chess_piece, :color, :display
    def initialize(color, chess_piece = nil)
           @color = color
           @chess_piece = chess_piece

           @display = color_cell(color, chess_piece)
            
    end
        

    private 
    
    def color_cell(color, chess_piece)
        if(color == :white)
            return white_cell(chess_piece) 
        elseif(color == :black) 
            return black_cell(chess_piece)
        end
    end



    def white_cell(chess_piece = " ")
        temp = " " + " " + " \n" + " " + chess_piece + " \n" + " " + " " + " "              
        return temp
    end    


    def black_cell(chess_piece = BLACK_SPACE)
        temp = BLACK_SPACE + BLACK_SPACE + "#{BLACK_SPACE}\n" + BLACK_SPACE + chess_piece + "#{BLACK_SPACE}\n" + BLACK_SPACE + BLACK_SPACE + BLACK_SPACE

        return temp 
    end



end



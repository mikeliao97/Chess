#The board class should contain a private method for a default board
#you should be able to access a board by supplying '1A' or some way
#empty values on the board are titled :empty_black, :empty_white
#you can access board 
class Board
    attr_accessor :Cell
    def intialize(saved_board)
            
            

    end


    def display_board


    end

    def access_cell(letter, number)

    end

    def get_cell(letter, number)


    end

    private

    def default_board
         Array.new(8) {Array.new(8)}

         #populate the black and white squares
    end

end

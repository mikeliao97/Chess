#The board class should contain a private method for a default board
#you should be able to access a board by supplying '1A' or some way
#empty values on the board are titled :empty_black, :empty_white
#you can access board 
require_relative 'Cell.rb'
class Board
    attr_accessor :grid
    def initialize(saved_board = false) #in case there is a saved game
        @grid = saved_board == true ? saved_board : default_board
            
    end

    #this method prints the board
    #For each row of the board, it'll print a new line
    def display_board()
        @grid.each do |row|
                row.each do |element|
                        print element
                end
            puts ""
        end

    end
    
    #this accesses the grid
    def replace_cell(letter, number)

        
    end

    def get_cell(letter, number)
            case letter
            when "A"
               @grid[1][number]     
            when "B"
                @grid[2][number]
            when "C"
                @grid[3][number]
            when "D"
                @grid[4][number]
            when "E"
                @grid[5][number]
            when "F"
                @grid[6][number]
            when "G"
                @grid[7][number]
            when "H"
                @grid[8][number]
            else
                raise ArgumentError.new("Only A- H are allowed")
            end

    end

    private

    def default_board
         x = Array.new(9) {Array.new(9)}
            
         #populate the black and white squares
         x[0][0] = " "
         x[0][1] = "1"
         x[0][2] = "2"
         x[0][3] = "3"
         x[0][4] = "4"
         x[0][5] = "5"
         x[0][6] = "6"
         x[0][7] = "7"
         x[0][8] = "8"
         #populate the letters on the left side of the board
         x[1][0] = "A"
         x[2][0] = "B"
         x[3][0] = "C"
         x[4][0] = "D"
         x[5][0] = "E"
         x[6][0] = "F"
         x[7][0] = "G"
         x[8][0] = "H"


         #populate the cell with alternating white and black squares
         for i in 1..8
                 for j in 1..8 
                    if(j % 2 == 0)
                            x[i][j] = Cell.new(:white).value
                    else
                            x[i][j] = Cell.new(:black).value

                    end
                 end
         end

         #populate the white side on the top

         #populate the black side on the bottom



        return x
    end


end





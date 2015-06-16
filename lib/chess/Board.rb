#the board class should contain a private method for a default board
#you should be able to access a board by supplying '1a' or some way
#empty values on the board are titled :empty_black, :empty_white
#you can access board 
require_relative './Cell.rb'
require_relative './Pieces.rb'
class Board
    attr_accessor :grid, :player1, :player2
    def initialize(player1, player2) #in case there is a saved game
        @player1 = player1
        @player2 = player2
        @grid = default_board

    end

    #this method prints the board
    #For each row of the board, it'll print a new line
    def display_board()
        puts ""
        puts "***********"
        @grid.each do |row|
                row.each do |element|
                        print element.to_s
                end
            puts ""
        end
        puts " 12345678"
        puts "***********"
        puts ""
    end
    
    #this accesses the grid
    def replace_cell(letter, number, piece)
            case letter
            when "A"
                @grid[1][number.to_i] = piece   
            when "B"
                @grid[2][number.to_i] = piece
            when "C"
                @grid[3][number.to_i] = piece
            when "D"
                @grid[4][number.to_i] = piece
            when "E"
                @grid[5][number.to_i] = piece
            when "F"
                @grid[6][number.to_i]  = piece
            when "G"
                @grid[7][number.to_i] = piece
            when "H"
                @grid[8][number.to_i] = piece
            else
                raise ArgumentError.new("Only A- H are allowed")
            end
    end

    def get_cell(letter, number, grid = @grid)
            case letter
            when "A"
                @grid[1][number.to_i]     
            when "B"
                @grid[2][number.to_i]
            when "C"
                @grid[3][number.to_i]
            when "D"
                @grid[4][number.to_i]
            when "E"
                @grid[5][number.to_i]
            when "F"
                @grid[6][number.to_i]
            when "G"
                @grid[7][number.to_i]
            when "H"
                @grid[8][number.to_i]
            else
                raise ArgumentError.new("Only A- H are allowed")
            end

    end
    #for the purposes of testing. Will remove this method later
    def remove_pawns
        @grid[2][1] = Cell.new(@player1.color)
        @grid[2][2] = Cell.new(@player1.color)
        @grid[2][3] = Cell.new(@player1.color)
        @grid[2][4] = Cell.new(@player1.color)
        @grid[2][5] = Cell.new(@player1.color)
        @grid[2][6] = Cell.new(@player1.color)
        @grid[2][7] = Cell.new(@player1.color)
        @grid[2][8] = Cell.new(@player1.color)


        @grid[7][1] = Cell.new(@player1.color)
        @grid[7][2] = Cell.new(@player1.color)
        @grid[7][3] = Cell.new(@player1.color)
        @grid[7][4] = Cell.new(@player1.color)
        @grid[7][5] = Cell.new(@player1.color)
        @grid[7][6] = Cell.new(@player1.color)
        @grid[7][7] = Cell.new(@player1.color)
        @grid[7][8] = Cell.new(@player1.color)

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
                            x[i][j] = Cell.new(@player1.color)
                    else
                            x[i][j] = Cell.new(@player2.color)

                    end
                 end
         end

         #populate the white side on the top
         x = initializeWhiteSide(x)

         #populate the black side on the bottom
         x = initializeBlackSide(x)


         return x
    end

    #this takes player 1 and initializes pieces for the white side
    def initializeWhiteSide(x)
        #pawns
        x[2][1] = Pawn.new(color: @player1.color, player: @player1)
        x[2][2] = Pawn.new(color: @player1.color, player: @player1)
        x[2][3] = Pawn.new(color: @player1.color, player: @player1)
        x[2][4] = Pawn.new(color: @player1.color, player: @player1)
        x[2][5] = Pawn.new(color: @player1.color, player: @player1)
        x[2][6] = Pawn.new(color: @player1.color, player: @player1)
        x[2][7] = Pawn.new(color: @player1.color, player: @player1)
        x[2][8] = Pawn.new(color: @player1.color, player: @player1)
        
        #other pieces
        x[1][1] = Rook.new(color: @player1.color, player: @player1) 
        x[1][2] = Knight.new(color: @player1.color, player: @player1) 
        x[1][3] = Bishop.new(color: @player1.color, player: @player1) 
        x[1][4] = Queen.new(color: @player1.color, player: @player1) 
        x[1][5] = King.new(color: @player1.color, player: @player1) 
        x[1][6] = Bishop.new(color: @player1.color, player: @player1) 
        x[1][7] = Knight.new(color: @player1.color, player: @player1) 
        x[1][8] = Rook.new(color: @player1.color, player: @player1) 
        
        return x
    end

    #this takes player 2 and initializes the pieces for the black side
    def initializeBlackSide(x)
        x[7][1] = Pawn.new(color: @player2.color, player: @player2)
        x[7][2] = Pawn.new(color: @player2.color, player: @player2)
        x[7][3] = Pawn.new(color: @player2.color, player: @player2)
        x[7][4] = Pawn.new(color: @player2.color, player: @player2)
        x[7][5] = Pawn.new(color: @player2.color, player: @player2)
        x[7][6] = Pawn.new(color: @player2.color, player: @player2)
        x[7][7] = Pawn.new(color: @player2.color, player: @player2)
        x[7][8] = Pawn.new(color: @player2.color, player: @player2)
        
        #other pieces
        x[8][1] = Rook.new(color: @player2.color, player: @player2) 
        x[8][2] = Knight.new(color: @player2.color, player: @player2) 
        x[8][3] = Bishop.new(color: @player2.color, player: @player2) 
        x[8][4] = Queen.new(color: @player2.color, player: @player2) 
        x[8][5] = King.new(color: @player2.color, player: @player2) 
        x[8][6] = Bishop.new(color: @player2.color, player: @player2) 
        x[8][7] = Knight.new(color: @player2.color, player: @player2) 
        x[8][8] = Rook.new(color: @player2.color, player: @player2)  

        return x
    end
end





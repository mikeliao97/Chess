#This is the method with the pieces on the board aside from cell
#The method self.possible_move? gives listing of all the possible moves that the piece can go
#
#Then, if self.possible_move? is true, there is valid_move? that is passed to
#the specific board to check whether the piece can go to that cell. For example,
#valid_move checks wether there are pieces in the way.
require_relative "pieces_unicode"

include PiecesConstant

#These pieces should have specific ways that they move....
#These pieces have color
class Rook 
   attr_accessor :unicode, :color, :player
    def initialize(args = {})
       @color = args[:color] || :white 
       @player = args[:player] 
       @unicode = get_unicode()
    end
    
    def get_unicode()
        if(@color == :white)
            PiecesConstant::WHITE_ROOK 
        elsif(@color == :black)
            PiecesConstant::BLACK_ROOK
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end
    
    #Rooks can only move up, left, down, right
    #have a helper method to check w
    def self.possible_move?(move, board)
        return PiecesConstant::valid_horizontal_vertical_move?(move, board)
    end

    def valid_move?(move, board)
        if(move[0] == move[2]) #if A = A or B = B, it kinda means that its on the same row. Return true if nothing is in the way               
                 for i in (move[1].to_i + 1)..(move[3].to_i - 1)
                         puts self.player
                         puts board.get_cell(move[0], i).player
                        if board.get_cell(move[0], i).player == self.player
                            
                             #this means something is in the way
                                puts "#{board.get_cell(move[0], i).class} is in the way of the rook!"
                                return false
                        end
                 end
                 
                 return true
         end


         if(move[1] == move[3]) #if 2 = 2 or 7 = 7, it kinda means that its on the same column  
                puts "This instances player #{self.player}"
                
                 for i in (move[0].ord + 1).chr .. (move[2].ord - 1).chr
                        if board.get_cell(i, move[1]).player == self.player #this means something is in the wa
                                puts "#{board.get_cell(i, move[1]).class} is in the way of the rook!"
                                return false
                        end
                 end

                 return true

         end

        return false
    end

    
end

class Queen 
    attr_accessor :unicode, :color, :player
    def initialize(args = {})
        @color = args[:color] || :white
        @player = args[:player]
        @unicode = get_unicode()
    end

    def get_unicode()
        if(@color == :white)
            PiecesConstant::WHITE_QUEEN 
        elsif(@color == :black)
            PiecesConstant::BLACK_QUEEN
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end

    def self.possible_move?(move, board)
        return PiecesConstant::valid_horizontal_vertical_move?(move, board) || PiecesConstant::valid_diagonal_move?(move, board)
    end
    
end


class King 
    attr_accessor :unicode, :color, :player
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
        @player = args[:player]
    end

    def get_unicode()
        if(@color == :white)
            PiecesConstant::WHITE_KING
        elsif(@color == :black)
            PiecesConstant::BLACK_KING
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end
    
    def self.possible_move?(move, board)
        if((move[2].ord - move[0].ord).abs < 2 && (move[3].to_i - move[1].to_i).abs < 2) 
                return true
        end

        return false
    end

end


class Bishop
    attr_accessor :unicode, :color, :player
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
        @player = args[:player]
    end

    def get_unicode()

        if(@color == :white)
            PiecesConstant::WHITE_BISHOP
        elsif(@color == :black)
            PiecesConstant::BLACK_BISHOP
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end

        
    def self.possible_move?(move, board)
        return PiecesConstant::valid_diagonal_move?(move, board)
    end




end

class Pawn
    attr_accessor :unicode, :color, :player
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
        @player = args[:player]
    end

    def get_unicode()
        if(@color == :white)
            PiecesConstant::WHITE_PAWN
        elsif(@color == :black)
            PiecesConstant::BLACK_PAWN
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end

    def self.possible_move?(move, board)
        #the second location's letter is smaller than one's letter. For example from G to F or B to A
        #the second location's number is smaller than or bigger than by one. This one just use aboslute value
        if(move[0] == move[2] && move[1] == move[3])
                return true
        end
            
        if((move[0].ord - move[2].ord).abs <= 1 && (move[3].to_i - move[1].to_i).abs <= 1 && (move[0].ord - move[2].ord).abs != 0 )
            return true      
        end

            return false

    end
end

class Knight
    attr_accessor :unicode, :color, :player
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
        @player = args[:player]
    end
    def get_unicode()
        if(@color == :white)
            return PiecesConstant::WHITE_KNIGHT
        elsif(@color == :black)
            return PiecesConstant::BLACK_KNIGHT
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end

    def self.possible_move?(move, board) 
            #top top right
            if((move[2].ord - move[0].ord).abs == 2 && (move[3].to_i - move[1].to_i).abs == 1)
                return true
            end

            if((move[3].to_i - move[1].to_i).abs == 2 && (move[2].ord - move[0].ord).abs == 1)
                    return true
            end
            

            return false
            #top right
            
            #bottom right
            
            #bottom bottom right
            
            #bottom bottom left
            
            #bottom left
            
            #top left
            
            #top top left

    end

end




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
    def self.valid_move?(move, board)
         if(move[0] == move[2]) #if A = A or B = B, it kinda means that its on the same row. Return true if nothing is in the way               
                 for i in (move[1].to_i + 1)..(move[3].to_i - 1)
                        if board.get_cell(move[0], i).class != Cell #this means something is in the way
                                return false
                        end
                 end
         end

            

         if(move[1] = move[3]) #if 2 = 2 or 7 = 7, it kinda means that its on the same column  
                 for i in (move[0].ord + 1).chr .. (move[2].ord - 1).chr
                        if board.get_cell(i, move[1]).class != Cell #this means something is in the way
                                return false
                        end
                 end

         end
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
            puts "Penis"
            return PiecesConstant::BLACK_KNIGHT
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end

end




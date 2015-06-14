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
                         puts i
                         puts board.get_cell(move[0], i).class
                        if board.get_cell(move[0], i).class != Cell #this means something is in the way
                                puts "#{board.get_cell(move[0], i).class} is in the way of the rook!"
                                return false
                                break
                        end
                 end
                 
                 return true
         end

            

         if(move[1] == move[3]) #if 2 = 2 or 7 = 7, it kinda means that its on the same column  
                 for i in (move[0].ord + 1).chr .. (move[2].ord - 1).chr
                         puts i
                         puts board.get_cell(i, move[1]).class
                        if board.get_cell(i, move[1]).class != Cell #this means something is in the way
                                puts "#{board.get_cell(i, move[1]).class} is in the way of the rook!"
                                return false
                                break
                        end
                 end

                 return true

         end

         puts "Rook cannot go Diagonally"

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

     def self.valid_move?(move, board)
         if(move[0] == move[2]) #if A = A or B = B, it kinda means that its on the same row. Return true if nothing is in the way               
                 for i in (move[1].to_i + 1)..(move[3].to_i - 1)
                         puts i
                         puts board.get_cell(move[0], i).class
                        if board.get_cell(move[0], i).class != Cell #this means something is in the way
                                puts "#{board.get_cell(move[0], i).class} is in the way of the rook!"
                                return false
                                break
                        end
                 end
                 
                 return true
         end

            

         if(move[1] == move[3]) #if 2 = 2 or 7 = 7, it kinda means that its on the same column  
                 for i in (move[0].ord + 1).chr .. (move[2].ord - 1).chr
                         puts i
                         puts board.get_cell(i, move[1]).class
                        if board.get_cell(i, move[1]).class != Cell #this means something is in the way
                                puts "#{board.get_cell(i, move[1]).class} is in the way of the rook!"
                                return false
                                break
                        end
                 end

                 return true

         end

         puts "Rook cannot go Diagonally"

         return false

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

    
    def self.valid_move?(move, board)
        #it is a valid move if the the difference between (move[0], move[2]) and ()move[1] and move[3]) are the same
        #B1, A2 is a valid move. because Math.abs(B - A) = 1 and Math.abs(1-2) = 1. Thus its a valid move
        #F1, C4 is a valid move as well
            
        if((move[2].ord - move[0].ord).abs - (move[3].to_i - move[1].to_i).abs == 0)
            difference_in_letter = move[0].ord - move[2].ord
            puts difference_in_letter
            increment_in_letter = difference_in_letter > 0 ? -1 : 1 
            puts "increment_in_letter #{increment_in_letter}"
            
            difference_in_number = move[3].to_i - move[1].to_i
            puts difference_in_number
            increment_in_number = difference_in_number > 0 ? 1 : -1 
            puts "increment_in_number #{increment_in_number}"

            for i in 1..(move[2].ord - move[0].ord).abs
                current_letter = (move[0].ord + i * increment_in_letter).chr
                current_number = (move[1].to_i + i * increment_in_number).to_s
                puts "current_letter = #{current_letter}"
                puts "current_number= #{current_number}" 

                if(board.get_cell(current_letter, current_number).class != Cell)
                        puts "#{board.get_cell(current_letter, current_number).class} is in the way of the rook!" 
                        return false
                end

            end


            return true
        end
    
        return false

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




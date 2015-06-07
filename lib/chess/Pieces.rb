require_relative "pieces_unicode"
include PiecesConstant
class Rook 
   attr_accessor :unicode, :color
    def initialize(args = {})
       @color = args[:color] || :white 
    
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

end

class Queen 
    attr_accessor :unicode, :color
    def initialize(args = {})
        @color = args[:color] || :white
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
end


class King 
    attr_accessor :unicode, :color
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
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
    attr_accessor :unicode, :color
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
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
    attr_accessor :unicode, :color
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
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
    attr_accessor :unicode, :color
    def initialize(args = {})
        @color = args[:color] || :white
        @unicode = get_unicode()
    end
    def get_unicode()
        if(@color == :white)
            puts "fdsfda"
            return PiecesConstant::WHITE_KNIGHT
        elsif(@color == :black)
            puts "Penis"
            return PiecesConstant::BLACK_KNIGHT
        else
            raise ArgumentError.new('Not initialized correctly')
        end
    end

end

new_knight = Knight.new(color: :black)
puts new_knight.to_s
new_knight.unicode
new_knight.color



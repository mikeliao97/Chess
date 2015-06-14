module PiecesConstant
    WHITE_KING = "\u2654"
    WHITE_QUEEN = "\u2655"
    WHITE_ROOK = "\u2656"
    WHITE_BISHOP = "\u2657"
    WHITE_PAWN = "\u2659"
    WHITE_KNIGHT = "\u2658"

    BLACK_KING = "\u265A"
    BLACK_QUEEN = "\u265B"
    BLACK_ROOK = "\u265C"
    BLACK_BISHOP = "\u265D"
    BLACK_KNIGHT = "\u265E"
    BLACK_PAWN  = "\u265F" 
    
    #to string
    def to_s
            @unicode
    end

    def valid_horizontal_vertical_move?(move, board)
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

         puts "cannot go Diagonally"

         return false

    end

    def valid_diagonal_move(move, board)

    end


end

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
                        if board.get_cell(move[0], i).class != Cell #this means something is in the way
                                puts "#{board.get_cell(move[0], i).class} is in the way of the rook!"
                                return false
                        end
                 end
                 
                 return true
         end

         if(move[1] == move[3]) #if 2 = 2 or 7 = 7, it kinda means that its on the same column  
                 for i in (move[0].ord + 1).chr .. (move[2].ord - 1).chr
                        if board.get_cell(i, move[1]).class != Cell #this means something is in the way
                                puts "#{board.get_cell(i, move[1]).class} is in the way of the rook!"
                                return false
                        end
                 end

                 return true

         end
         return false

    end

    def valid_diagonal_move?(move, board)
        #it is a valid move if the the difference between (move[0], move[2]) and ()move[1] and move[3]) are the same
        #B1, A2 is a valid move. because Math.abs(B - A) = 1 and Math.abs(1-2) = 1. Thus its a valid move
        #F1, C4 is a valid move as well
            
        if((move[2].ord - move[0].ord).abs - (move[3].to_i - move[1].to_i).abs == 0)
            difference_in_letter = move[0].ord - move[2].ord
            increment_in_letter = difference_in_letter > 0 ? -1 : 1 
            
            difference_in_number = move[3].to_i - move[1].to_i
            increment_in_number = difference_in_number > 0 ? 1 : -1 

            for i in 1..(move[2].ord - move[0].ord).abs
                current_letter = (move[0].ord + i * increment_in_letter).chr
                current_number = (move[1].to_i + i * increment_in_number).to_s

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

#actually you would save game if you wanted to save the game
class Game 
	attr_reader :player1, :player2, :board
	def initialize(player1, player2, board)
			@player1 = player1
			@player2 = player2
			@board = board
	end

	def get_move(player)
		"#{player.name} Please Enter Your Move(Example: 'A2B2'): "
		move = gets.chomp
		
		while(true)
			if(checkmove(move) == true) #if the move is valid
					break
			else
				puts "Invalid move, Try Again: "
				move = gets.chomp
			end
		end

	end
	
	#parse this move and make sure its okay
	#Parse this move
	def checkmove(move)
		#parse the first two letters and get the piece at this location
		#if it is empty return false because it does not contain a movable piece
		#If you get a piece, use the class method to check wether the piece can move there
		
		#if any of the moves are bigger than the board piece return false
		if(move[0] > 'H' || move[2] > 'H')
				return false
		end
		
		if(move[0] < 'A' || move [2] < 'A')
				return false
		end

		if(move[1] > 8 || move[3] > 8)
				return false
		end

		if(move[1] < 1 || move[3] < 1)
				return false
		end
			
			
		piece = @board.get_cell(move[0], move[1])
		
		if(piece.class == Cell)
			return false
		end

		return piece.valid_move?(move, @board)

	end

	def play




	end
	
	

end

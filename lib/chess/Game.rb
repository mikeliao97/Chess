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
		



	end

	def play




	end
	
	

end

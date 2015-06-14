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
	end
	
	#parse this move and make sure its okay
	def checkmove(move)

	end

	def play




	end
	
	

end

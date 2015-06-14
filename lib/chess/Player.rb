class Player
	attr_accessor :pieces, :name, :color
	def initialize(args)
			@name = args[:name]
			@color = args[:color]
	end

end

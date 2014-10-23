#Exercise 2 - Mars Rover

class Rover
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction
		
	end

	def move
		#new_point = point.x + instruction.x, point.y + instruction.y, point.direction + instruction.direction
	end

	def turn
		
	end

	def display_position
		puts "#{@x}, #{@y}, #{@direction}"
	end
end

rover1 = Rover.new(1,1, "N")
rover1.display_position
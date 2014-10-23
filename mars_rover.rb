#Exercise 2 - Mars Rover

class Rover
	attr_accessor :x, :y, :direction

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end
	
	def display_position
		puts "#{@x}, #{@y}, #{@direction}"
	end

	def read_instruction
		puts "Please enter the instructions for the Rover (M, L, R): "
		@instructions = gets.chomp
	end

	def interpret_instructions
		@instructions.each_char do |c|
			case c
			when "M"
				move
			when "L"
				turn_left
			when "R"
				turn_right
			end
		end
	end

	def move
		if (@direction == "N") 
			@y = @y + 1
		elsif (@direction == "E") 
			@x = @x + 1
		elsif (@direction == "S") 
			@y = @y - 1
		else #(@direction == "W") 
			@x = @x - 1
		end
	end

	def turn_left
		if (@direction == "N") 
			@direction = "W"
		elsif (@direction == "W") 
			@direction = "S"
		elsif (@direction == "S") 
			@direction = "E"
		else #(@direction == "E") 
			@direction = "N"
		end
	end
	
	def turn_right
		if (@direction == "N") 
			@direction = "E"
		elsif (@direction == "E") 
			@direction = "S"
		elsif (@direction == "S") 
			@direction = "W"
		else #(@direction == "W") 
			@direction = "N"
		end
	end
end

rover1 = Rover.new(1,1, "N")
rover2 = Rover.new(2,3, "W")

rover1.read_instruction
rover1.interpret_instructions

rover2.read_instruction
rover2.interpret_instructions

rover1.display_position
rover2.display_position

#Exercise 2 - Mars Rover
module PlateauSize
	def set_plateau(height, width)
		@height = height
		@width = width
	end
end

class Rover
	attr_accessor :x, :y, :direction

	include PlateauSize

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end
	
	def display_position
		puts "#{@x}, #{@y}, #{@direction}"
	end

	def read_instruction
		puts "Please enter the instructions for the Rover (M/L/R): "
		@instructions = gets.upcase
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

		@x = [@x, @width].min
		@y = [@y, @height].min
		@x = [@x, 0].max
		@y = [@y, 0].max

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

puts "Please enter the plateau size (height/width): "
plateau = gets.chomp


puts "Please enter the starting coordinates of Rover 1 (x/y/direction): "
coordinates = gets.upcase

rover1 = Rover.new(coordinates.split[0].to_i,coordinates.split[1].to_i, coordinates.split[2])
rover1.set_plateau(plateau.split[0].to_i, plateau.split[1].to_i)

rover1.read_instruction
rover1.interpret_instructions

puts "Please enter the starting coordinates of Rover 2 (x/y/direction): "
coordinates = gets.upcase

rover2 = Rover.new(coordinates.split[0].to_i,coordinates.split[1].to_i, coordinates.split[2])
rover2.set_plateau(plateau.split[0].to_i, plateau.split[1].to_i)

rover2.read_instruction
rover2.interpret_instructions

rover1.display_position
rover2.display_position

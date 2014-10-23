#Exercise 1 - Class Time

class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def say_name
		puts "Hi, my name is #{@name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an object."
	end
end

instructor = Instructor.new("Chris")
instructor.say_name


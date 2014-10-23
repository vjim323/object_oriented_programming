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

chris = Instructor.new("Chris")
chris.say_name
chris.teach

cristina = Student.new("Cristina")
cristina.say_name
cristina.learn
cristina.teach
#The teach method belongs to the Instructor class, which is not appended to the Student class. 
#Therefore, the teach method isn't available in the Student class to be called.

class Santa
	# Create 3 methods:
	
	# speak
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end
	
	# eat_milk_and_cookies
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	# initialize
	def initialize
		puts "Initializing Santa instance..."
	end
end

KrisKringle = Santa.new

KrisKringle.speak
KrisKringle.eat_milk_and_cookies("chocolate chip")
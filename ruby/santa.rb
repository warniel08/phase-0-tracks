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
	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	#setter methods
	def celebrate_birthday=(age_increase)
		@age = age_increase + 1
	end

	def get_mad_at=(reindeer)
		index_0 = "Rudolph"
		index_1 = "Dasher"
		index_2 = "Dancer"
		index_3 = "Prancer"
		index_4 = "Vixen"
		index_5 = "Comet"
		index_6 = "Cupid"
		index_7 = "Donner"
		index_8 = "Blitzen"

		if reindeer == "Rudolph"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(0))
		elsif reindeer == "Dasher"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(1))
		elsif reindeer == "Dancer"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(2))
		elsif reindeer == "Prancer"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(3))
		elsif reindeer == "Vixen"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(4))
		elsif reindeer == "Comet"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(5))
		elsif reindeer == "Cupid"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(6))
		elsif reindeer == "Donner"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(7))
		elsif reindeer == "Blitzen"
			@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(8))
		end
	end

	attr_accessor :gender

	#getter methods
	attr_reader :age, :ethnicity

end

new_Santa = Santa.new("x", "y")
new_Santa.speak
new_Santa.eat_milk_and_cookies("chocolate chip")
	
santas = []
santas << Santa.new("male", "American")
santas << Santa.new("female", "alien")
santas << Santa.new("none", "unicorn")
santas << Santa.new("agender", "Canadian")
santas << Santa.new("N/A", "N/A")

puts 
test = Santa.new("none", "falcon")
p test
test.gender = "male"
p test
puts "#{test.ethnicity}"
test_age = test.celebrate_birthday = 2
p test
puts "#{test.age}"
x = test.get_mad_at=("Vixen")
p test

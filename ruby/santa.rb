class Santa
	# Create 3 methods:
	
	# speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end
	
	# eat_milk_and_cookies method
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	
	# initialize method
	def initialize(gender, ethnicity, age)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		#@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	#setter methods
	# def celebrate_birthday=(age_increase)
	# 	@age = age_increase + 1
	# end

	# def get_mad_at=(reindeer)
	# 	reindeer_name = @reindeer_ranking.delete(reindeer)
	# 	@reindeer_ranking << reindeer_name
	# end

	attr_accessor :gender, :age, :ethnicity #:reindeer_ranking

	#getter methods
	attr_reader :ethnicity

end

#-------------------------------------------------
# Assignment 6.3 Release 0-3
#-------------------------------------------------
# Driver code
# new_Santa = Santa.new("x", "y")
# new_Santa.speak
# new_Santa.eat_milk_and_cookies("chocolate chip")
	
# santas = []
# santas << Santa.new("male", "American")
# santas << Santa.new("female", "alien")
# santas << Santa.new("none", "unicorn")
# santas << Santa.new("agender", "Canadian")
# santas << Santa.new("N/A", "N/A")

# puts 
# test = Santa.new("none", "falcon")
# p test
# test.gender = "male"
# p test
# puts "#{test.ethnicity}"
# test.celebrate_birthday = 22
# p test
# puts "#{test.age}"
# test.get_mad_at = "Vixen"
# p test

#-------------------------------------------------
# Assignment 6.3 Release 4
#-------------------------------------------------


50.times do |i|
	genders = ["agender", "female", "alien", "male", "female", "gender fluid", "cis", "other", "two-spirit", "N/A"]
	ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "two or more races", "Native American", "Pacific Islander", "N/A"]
	cookies = ["snickerdoodle", "chocolate chip", "m&m", "sugar", "peanut butter", "fudge"]
	rand_age = rand(0..140)
	rand_gender = genders.sample
	rand_ethnicity = ethnicities.sample
	rand_cookie = cookies.sample
	puts "\nSanta #{i + 1}"
	new_santa = Santa.new(rand_gender, rand_ethnicity, rand_age)
	new_santa.speak
	new_santa.eat_milk_and_cookies(rand_cookie)
	puts "-- The attributes of your new Santa are -- \n\tGender: #{new_santa.gender}\n\tEthnicity: #{new_santa.ethnicity}\n\tAge: #{new_santa.age}"
end




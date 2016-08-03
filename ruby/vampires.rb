
system "clear"
#Begin program by asking how many employees will be processed
print "\nHow many employees will you process right now? "
employees = gets.chomp

#Set loop counter to 0
n = 0
#Create while loop to count how many employees will be processed
while n < employees.to_i

	#Ask employee questions and store information
	print "\nWhat is your name? "
	name = gets.chomp
	
	print "How old are you? "
	age = gets.chomp
	
	print "What year were you born? "
	birth_year = gets.chomp
	
	print "Our company cafeteria serves garlic bread. Should we order some for you? (y/n) "
	garlic_bread = gets.chomp
	
	print "Would you like to enroll in the company's health insurance? (y/n) "
	health_insurance = gets.chomp

	print "What allergies do you have? "
	allergies = gets.chomp

	while allergies
		print "What other allergies do you have? (type 'done' when finished) "
		allergies = gets.chomp
		if allergies == "done"
			break
		elsif allergies == "sunshine"
			break
		end
	end
	
	#Create boolean statements for each variable
	if age.to_i == (2016 - birth_year.to_i)
		correct_age = true
	else
		correct_age = false
	end
	
	if garlic_bread == "y"
		wants_garlic = true
	else
		wants_garlic = false
	end
	
	if health_insurance == "y"
		wants_health = true
	else
		wants_health = false
	end
	
	if name == "Drake Cula" || name == "Tu Fang"
		name_input = true
	else
		name_input = false
	end

	#Create conditional statements for the logic statements
	if name_input == true #correct_age == true && wants_garlic == true && wants_health == true
			puts "\nDefinitely a vampire."
		elsif allergies == "sunshine"
			puts "\nProbably a vampire."
		elsif correct_age == true && (wants_garlic == true || wants_health == true)
			puts "\nProbably not a vampire."
		elsif correct_age != true && wants_garlic != true && wants_health != true
			puts "\nAlmost certainly a vampire."
		elsif correct_age != true && (wants_garlic != true || wants_health != true)
			puts "\nProbably a vampire."
		else
			puts "\nResults inconclusive."
	end
	#Increment while loop by one
	n += 1
end

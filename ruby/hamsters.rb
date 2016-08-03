print "What is the hamster's name? "
name = gets.chomp

print "How loud is your hamster? (Enter number between 1-10) "
volume = gets.chomp.to_i

print "What color is your hamster? "
color = gets.chomp

print "Is this hamster a good candidate for adoption? (y/n) "
adoption = gets.chomp

print "Approximately how old is your hamster? "
age = nil
age = gets.chomp.to_f

puts "\nPlease review your data:"
puts "Name: #{name} 
Volume of hamster: #{volume} 
Color of hamster: #{color} 
Adoption eligibility: #{adoption} 
Age of hamster: #{age}"

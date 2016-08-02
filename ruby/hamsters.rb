puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is your hamster? (Enter number between 1-10)"
volume = gets.chomp.to_i

puts "What color is your hamster?"
color = gets.chomp

puts "Is this hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp

puts "Approximately how old is your hamster?"
age = nil
age = gets.chomp.to_f

p name, volume, color, adoption, age

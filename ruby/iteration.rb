#def method
#	puts "This message is inside the method: "
#	puts "Hello"
#	yield
#	yield
#	yield
#end
#
#method {
#	puts "This is the message in the block: "
#	puts "Goodbye"}


puts "\nHash"
house_paint = {
	"living room" => "yellow",
	kitchen: "blue",
	library: "green",
	bedroom: "gray"
}

puts "Before .each call:"
p house_paint

puts "\nAfter .each call:"
house_paint.each do |room, color|
	color = "black"
	puts "The #{room} will be painted #{color}!"
end

puts "\n.each call didn't permanently change anything:"
p house_paint

puts "\nBefore .map call:"
p house_paint

puts "\nAfter .map call:"
house_paint.map do |room, color|
	color = "white"
	puts "The #{room} will be painted #{color}!"
end

puts "\n.map call didn't permanently change anything:"
p house_paint


puts "\nArray"
puts "Before .each call:"
furniture = ["sofa", "desk", "dining table", "bed"]
p furniture

puts "\nAfter .each call"
puts "These are the pieces we own: " 
furniture.each do |piece| 
	piece = "footstool"
	puts "#{piece}"
end

puts "\n.each did not permanently change anything:"
p furniture

puts "\nBefore .map call:"
p furniture

puts "\nAfter .map call:"
	puts "These are the pieces we own: " 
	furniture.map do |piece|
		piece = "nightstand" 
		puts "#{piece}"
end

puts "\n.map did not permanently change anything:"
p furniture

puts "\nBefore .map! call:"
p furniture

puts "\nAfter .map! call:"
	puts "These are the pieces we own: " 
		furniture.map! do |piece|
			piece.reverse!
end

puts furniture

puts "\n.map! call did permanently change the furniture"
p furniture





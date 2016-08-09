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
	puts "The #{room} will be painted #{color}!"
end

puts "\nBefore .map call:"
p house_paint

puts "\nAfter .map call:"
house_paint.map do |room, color|
	color = "white"
	p color
end
puts "\n.map call didn't permanently change anything:"
p house_paint


puts "\nArray"
# Before .each call
furniture = ["sofa", "desk", "dining table", "bed"]
p furniture

# After .each call
puts "These are the pieces we own: " 
furniture.each do |piece| 
	puts "#{piece}"
end

# Before .map call
p furniture

# After .map call
	puts "These are the pieces we own: " 
	furniture.map do |piece| 
		puts "#{piece}"
end

# .map call didn't permanently change anything
p furniture





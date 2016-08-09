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


# hash
house_paint = {
	"living room" => "yellow",
	kitchen: "blue",
	library: "green",
	bedroom: "gray"
}

# array
furniture = ["sofa", "desk", "dining table", "bed"]

house_paint.each do |room, color|
	puts "The #{room} will be painted #{color}!"
end

puts "\nThese are the pieces we own: " 
furniture.each do |piece| 
	puts "#{piece}"
end





#Initialize empty array
new_array = []
#add five items
new_array = ["apple", "train", "plane", "automobile"]
new_array << "bear"
p new_array
#Delete the item at index 2
new_array.delete_at(2)
p new_array
#insert new item
new_array.insert(2, "wheel")
p new_array
#remove first item without referring to index number.
new_array.delete("apple")
p new_array
#does array include certain item
if new_array.include?("wheel") == true
	puts "Yes, it is in the array"
else
	puts "No, it is not in the array"
end
#initialize another array with items in it
another_array = [1, 3, 4, 5]
#add two arrays together and store in new variable
p join_array = new_array + another_array


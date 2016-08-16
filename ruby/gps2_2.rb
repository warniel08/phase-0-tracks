# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # set each item in string of items as a symbol to represent key in hash
  # set default quantity = 0
  # print the list to the console, make method to print
# output: hash with quantity

$grocery_list = {}

def create_list(items_string)
	item_array = items_string.split(" ")
	item_array.each do |item| 
		$grocery_list.store(item,0)
	end
	p $grocery_list
end

items = "carrots cucumbers onions fish chicken"
p create_list(items)

# Method to add an item to a list
# input: item name as key and optional quantity as value
# steps: 
		# use item name as key
		# set optional quantity as value
		# print item and new quantity 
# output: print that item is printed to the list


def add_item(item, quant=0)
	$grocery_list.store(item, quant)
	p $grocery_list
end

item = "cabbage"
quant = 2
p add_item(item)
p add_item(item, quant)

# Method to remove an item from the list
# input: key or item name 
# steps: 
		# ask user what they want to remove from shopping list
		# key that user inputs use delete method
		# print this item was deleted
# output: new hash without deleted item

def remove_item(item)
	$grocery_list.delete(item)
end

#item = "cabbage"
#remove_item(item)
#p $grocery_list

# Method to update the quantity of an item
# input: key or item name
# steps:
		# ask user for specific item they want to change the quantity for
		# ask user new quantity of item 
		# updating item with new quantity
# output: new hash with item quantity updated

def update_quant(item, quant)
	$grocery_list.store(item, quant)
end

update_quant("cabbage", 4)
p $grocery_list


# Method to print a list and make it look pretty
# input: hash list of items created
# steps:
		# .each method to iterate through all items and print quantity and item
		# print "You have #{quantity} #{item}."
# output: pretty, updated list

def print_list(list)
	list.each do |item, quant|
		puts "You have #{quant} #{item}."
	end
end

print_list($grocery_list)
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
end

items = "bananas cheese bread limes"
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
	p "You added #{item} to your list."
end

add_item("bananas", 8)
add_item("Lemonade", 2)
add_item("Tomatoes", 3)
add_item("Onions", 1)
add_item("Ice Cream", 4)

# Method to remove an item from the list
# input: key or item name 
# steps: 
		# ask user what they want to remove from shopping list
		# key that user inputs use delete method
		# print this item was deleted
# output: print statement of which item crossed off, new hash without deleted item

def remove_item(item)
	$grocery_list.delete(item)
	p "You crossed off #{item} from your list."
end

remove_item("Lemonade")
remove_item("Onions")
p $grocery_list

# Method to update the quantity of an item
# input: key or item name
# steps:
		# ask user for specific item they want to change the quantity for
		# ask user new quantity of item 
		# updating item with new quantity
# output: print statement of updated item and quanitity, 
# new hash with item quantity updated

def update_quant(item, quant)
	$grocery_list.store(item, quant)
	p "You updated #{item} number to #{quant}."
end

update_quant("Ice Cream", 7)
update_quant("limes", 2)
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

# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

# What did you learn about pseudocode from working on this challenge?
# => I learned that pseudocode is very helpful in breaking down your steps in plain English so that when you code you just have to put in the technical syntax to make it work properly.
# What are the tradeoffs of using arrays and hashes for this challenge?
# => You can use an array, but you would have to create multiple arrays to take in both items and quantities. Hashes in my opinion are easier to use in this assignment because you are working with a key/value pair and can just work with those.
# What does a method return?
# => Implicitly the method returns the last line of the method, or if you explicitly state return(something) earlier in the method then the method will return that something sooner than the last line of code.
# What kind of things can you pass into methods as arguments?
# => It depends on what the method is processing. If you pass in strings to a method that processes integers then it won't work. But you can pass anything to a method in general.
# How can you pass information between methods?
# => In your driver code you can store the method return in a variable and then continue manipulating that variable with different method returns.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# => The importance of pseudocode was solidified. How to pass information between methods without setting global variables. Refactoring properly is still a bit hazy for me, but I know it will get better. And how to better clean up my code. It will just take practice.
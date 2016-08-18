class TodoList
	
	def initialize(initial_array)
		@list_array = ["do the dishes", "mow the lawn"]
	end

	def get_items
		@list_array
	end

	def add_item(new_item)
		@list_array << new_item
	end

 def delete_item(deleted_item)
 	@list_array.delete(deleted_item)
	end

	def get_item(x)
		@list_array[x]
	end

end
require './todolist.rb'

# Creates a new todo list
todo = TodoList.new("My List")

# Add four new items
todo.add_item("Get Milk")
todo.add_item("Print Ticket")
todo.add_item("Write Code")
todo.add_item("Take Over the World")

# Print the list
todo.print

# Delete the first item
todo.delete_item(0)

# Print the list
todo.print

# Delete the second item
todo.delete_item(1)

# Print the list
todo.print

# Update the completion status of the first item to complete
todo.toggle_status(0)

# Print the list
todo.print

# Update the title of the list
todo.rename("A New Named List")

# Print the list
todo.print

###################
# Additional output
###################

#Test Item.print
todo.items[0].print

# Add an item with priority
todo.add_item("Get Milk", 1)

# Print the list
todo.print

# Rename the last item
todo.rename_item(2, "Drink Mega Milk")

# Print the list
todo.print

# Complete all items
todo.toggle_status(1)
todo.toggle_status(2)

# Print the list
todo.print

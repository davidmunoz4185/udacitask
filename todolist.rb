class TodoList
  # methods and stuff go here
  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end
  attr_accessor :title, :items
  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end
end

class Item
  # methods and stuff go here
  attr_accessor description, completion_status

  # Initialize item with a description and marked as
  # not complete
  def initialize(item_description)
     @description = item_description
     @completed_status = false
  end
end

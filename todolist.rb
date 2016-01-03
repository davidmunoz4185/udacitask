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
  def print_list
    puts "-" * @title.length
    puts @title
    puts "-" * @title.length
    longest_word = @items.inject(0) do |previous_length, current_word|
      current_length = current_word.description.length
      current_length > previous_length ? current_length : previous_length
    end
    @items.each_index {|index|
      puts "#{index} - #{@items[index].description}".ljust(longest_word + 7) + "Completed: #{@items[index].completed_status}"
    }
  end
end

class Item
  # Initialize item with a description and marked as
  # not complete
  def initialize(item_description)
     @description = item_description
     @completed_status = false
  end

  # methods and stuff go here
  attr_accessor :description, :completed_status
end

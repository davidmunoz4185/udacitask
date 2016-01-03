class TodoList
  # methods and stuff go here
  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end

  attr_accessor :title, :items

  def add_item(new_item, priority=0)
    item = Item.new(new_item,priority)
    @items.push(item)
  end

  def rename(list_title)
    @title = list_title
  end

  def delete_item(index)
    @items.delete_at(index)
  end

  def toggle_status(index)
    @items[index].toggle_status
  end

  def rename_item(index, description)
    @items[index].description = description
  end

  def completed?
    return @items.all? {|item| item.completion_status == true}
  end

  def print
    header = "#{@title} -- Completed: #{completed?}"
    puts "-" * header.length
    puts header
    puts "-" * header.length
    longest_word = @items.inject(0) do |previous_length, current_word|
      current_length = current_word.description.length
      current_length > previous_length ? current_length : previous_length
    end
    @items.each_index {|index|
      puts "#{index} - [#{items[index].priority}]#{@items[index].description}".ljust(longest_word + 10) + "Completed: #{@items[index].completion_status}"
    }
  end
end

class Item
  # Initialize item with a description and marked as
  # not complete
  def initialize(item_description, priority=0)
     @description = item_description
     @completion_status = false
     @priority = priority
  end

  # methods and stuff go here
  attr_accessor :description, :completion_status, :priority

  def toggle_status
    @completion_status = !@completion_status
  end

  def print
    puts "#{@description} Completed: #{@completion_status} Priority: #{@priority}"
  end
end

# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.
# 2.
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add item to grocery list
# As a user, I want to delete item off grocery list
# As a user, I want to see whats included list?
# As a user, I want to see the entire list. show method
# As a user, I want to add item with its quantity
 
# Pseudocode
# 
# 
# 
# 
# 
# 
 
 
# Your fabulous code goes here....

class GroceryList 
  def initialize()
    @grocery_list = {}
  end
  
  def add(*items) # items = 2 item array
    items.each { |item| 
      @grocery_list[item[0]] = item[1] 
      p "#{item[1]} #{item[0].capitalize}(s) has been added to the list."
    }
  end
  
  def delete(item)
    inc = @grocery_list.delete(item)
    if (inc != nil)
      p "#{item.capitalize} has been deleted from the list."
    else
      p "#{item.capitalize} is not found on the list."
    end
  end
  
  def included?(item)
    inc = @grocery_list.has_key?(item)
    if (inc != nil)
      p "#{item.capitalize} is included in the list."
    else
      p "#{item.capitalize} is not included in the list."
    end
  end
  
  def show_list()
    p "Grocery List:"
    @grocery_list.each do |key, value|
      p "#{key.capitalize} - #{value}"
    end
  end
end

# DRIVER CODE GOES HERE. 
 
list = GroceryList.new()
list.add(['banana', 5], ['apple', 2])
list.show_list
list.delete('banana')
list.included?('banana')
list.show_list
 

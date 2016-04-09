class TodoList

  def initialize(x)
    @arr = ["do the dishes", "mow the lawn",]
  end

  def get_items
    @arr
  end

  def add_item(word)
    @arr << word
    @arr
  end

  def delete_item(word)
    @arr.delete(word)
    @arr
  end

  def get_item(num)
    @arr.fetch(num)
  end

<<<<<<< HEAD
end

=======
end
>>>>>>> feature-branch

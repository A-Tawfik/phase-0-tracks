class TodoList
  
  def initialize(array)
    @list = array
  end

  def get_items(int)
    @list[int]
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

end
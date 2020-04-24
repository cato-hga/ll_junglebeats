require_relative "node"

class LinkedList

  attr_accessor :head

  def initialize
    @head = head
  end

  def append(value)
    node = Node.new(value)
    
    if @head == nil
      @head = node
    else
      tail_node.next_node = node
    end
    
    node.data
  end

  def count
    counter = 0
    current_node = @head
    while !current_node.nil?
      current_node = current_node.next_node
      counter += 1
    end
    counter  
  end

  def to_string
    current_node = @head
    string_array = []

    while !current_node.nil?
      string_array << "#{current_node.data}"
      current_node = current_node.next_node
    end
    string_array.join(" ")
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = @head
    self.head = node
  end

  def insert(number, data)
    new_node = Node.new(data)
    node = @head
    n = 1
    until n == number || node.nil? do
      node = node.next_node
      n += 1
    end
    current_node = node
    new_node.next_node = current_node.next_node
    node.next_node = new_node
      
  end

  private

  def tail_node
    current_node = @head

    while !current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node
  end
end
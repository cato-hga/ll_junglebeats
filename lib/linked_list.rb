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

  def find(position, amount_return)
    node = @head

    n = 0

    while n != position do
      node = node.next_node
      n += 1
    end
    
    n = 0
    array_string = []
    while n != amount_return do
      array_string << "#{node.data}"
      
      node = node.next_node
      n += 1
    end
    
    array_string.join(" ")
  end

  def includes?(value)
    node = @head

    unless node.nil? || node.data == value 
      node = node.next_node
    end

    node ? node.data == value : false
  end

  def pop
    if head.nil?
      nil
    else
      current_node = @head
      until current_node.next_node.next_node == nil
        current_node = current_node.next_node
      end
    end
    popped_node = current_node.next_node.data
    puts "popped_node: #{popped_node}"
    current_node.next_node = nil
    return popped_node
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
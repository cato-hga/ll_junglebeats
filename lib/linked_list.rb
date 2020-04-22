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
    end
    
    node.data
  end

  def count
    if @head
      current_node = @head
      @counter = 1
      @counter
    else
      @counter
    end  
  end

  def to_string
    if @head
      current_node = @head
      @string = ""
      @string << "#{current_node.data}"
      @string
    else
      @string
    end
  end

end
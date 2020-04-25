require_relative "node"
require_relative "linked_list"

class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(values)
    values = values.split(" ")

    values.map do |value|
      @list.append(value)
    end

    values.join(" ")
  end

  def count
    @list.count
  end
end
require_relative "../lib/linked_list"

RSpec.describe "LinkedList" do
  it "is created with attribute head set to nil by default" do
    llist = LinkedList.new

    expect(llist.head).to eql(nil)
  end

  it "returns append data" do
    llist = LinkedList.new
    llist.append("algo")

    expect(llist.append("algo")).to eql("algo")
  end

  it "appends data to the list" do
    llist = LinkedList.new
    llist.append("algo")
    llist.append("deep")

    expect(llist.head.data).to eql("algo")
    expect(llist.head.next_node.data).to eql("deep")
  end

  it "counts how many things are on the list" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")

    expect(list.count).to eql(2)
  end

  it "generates a string of all elements" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")
    list.prepend("prepend")
    list.insert(1, "hola")

    expect(list.to_string).to eql("prepend hola algo deep")
  end

  it "prepends the node to the beginning of the list" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")
    list.prepend("prepend")

    expect(list.to_string).to eql("prepend algo deep")
  end

  it "inserts the node at a specific position on the list" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")
    list.prepend("prepend")
    list.insert(1, "hola")

    expect(list.to_string).to eql("prepend hola algo deep")
  end

  it "finds the position of an element and returns it" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.find(2, 1)

    expect(list.find(2,1)).to eql("shi")
    expect(list.find(1,3)).to eql("woo shi shu")
  end

  it "returns back true of false whether the value is in the list" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.includes?("deep")
    list.includes?("dep")

    expect(list.includes?("deep")).to eql(true)
    expect(list.includes?("dep")).to eql(false)
  end

  it "removes elements the last element from the list" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.pop
    
    expect(list.to_string).to eql("deep woo")
  end
end
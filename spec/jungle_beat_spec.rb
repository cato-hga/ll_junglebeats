
require_relative "../lib/junglebeat"
RSpec.describe "JungleBeat" do
  it "is initialized" do
    jungle_beat = JungleBeat.new

    expect(jungle_beat.list.head).to eql(nil)
    expect(jungle_beat.class).to eql(JungleBeat)
  end

  it "appends multipls nodes at a time" do
    jungle_beat = JungleBeat.new

    jungle_beat.append("john cato john")

    expect(jungle_beat.append("john cato john")).to eql("john cato john")
  end

  it "counts the amount of beats" do
    jungle_beat = JungleBeat.new
    jungle_beat.append "john cato john"

    expect(jungle_beat.count).to eql(3)
  end
end
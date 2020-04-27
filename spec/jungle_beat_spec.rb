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

  it "plays beats" do
    jungle_beat = JungleBeat.new
    jungle_beat.append "boom bap boom bap"
    jungle_beat.play

    expect(jungle_beat.play).to eql("boom bap boom bap")
  end

  it "appends beats to the list if in defined list" do
    jungle_beat = JungleBeat.new
    jungle_beat.append("boom")
    jungle_beat.append("Mississippi")

    expect(jungle_beat.count).to eql(1)

  end

  it "returns all of the beats on the list" do
    jungle_beat = JungleBeat.new
    jungle_beat.append("boom")
    jungle_beat.append("Mississippi")

    expect(jungle_beat.all).to eql("boom")
  end


  it "prepends beats to the list if in the defined list" do
    jungle_beat = JungleBeat.new
    jungle_beat.append("boom")
    jungle_beat.prepend("Mississippi")
    jungle_beat.prepend("tee")

    expect(jungle_beat.all).to eql("tee boom")
  end
end
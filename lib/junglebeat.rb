require_relative "node"
require_relative "linked_list"

class JungleBeat
  attr_accessor :list, :rate, :voice

  ACCEPTED_BEATS = %W{tee dee deep bop boop la na boom bap john cato}
  VOICE_OPTIONS = %W{Alice Boing}

  def initialize
    @list = LinkedList.new
    @voice = "Alice"
    @rate = 500
  end

  def append(values)
    values = values.split(" ")

    values.map do |value|
      if ACCEPTED_BEATS.include?(value)
        @list.append(value)
      else
        "wrong beat"
      end
    end

    values.join(" ")
  end

  def prepend(values)
    values = values.split(" ")

    values.map do |value|
      if ACCEPTED_BEATS.include?(value)
        @list.prepend(value)
      else
        "wrong beat"
      end
    end

    values.join(" ")
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Daniel"
  end

  def count
    @list.count
  end

  def all
    @list.to_string
  end

  def play
    beats = @list.to_string
    `say -r #{@rate} -v #{@voice} #{beats}`
    return @list.to_string
  end
end
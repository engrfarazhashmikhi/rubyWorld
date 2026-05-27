class RubyRanges

  def initialize
    @num = 1..100
    @num_size = @num.size
  end

  def printRanges
    n = @num
  end

  def getSize
    size = @num_size
  end

end

RR = RubyRanges.new

RangE = RR.printRanges

for r in RangE

  puts "Num Value: #{r}"

end

puts "Num Size: #{RR.getSize}"


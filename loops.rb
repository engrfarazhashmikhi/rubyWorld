class Loops
  def mathTable(num = 0)
    getTableNum = num.to_i
  
    counter = 1
 
    puts "Table of #{getTableNum}"
    puts "======================="
    while counter <= 12
      puts "#{getTableNum} * #{counter} = #{(getTableNum * counter)}"
      counter += 1
    end

  end

  def play()
    puts "Enter any random NUMBER: "
    table_number = gets.chomp().to_i
    mathTable(table_number)
  end

  def forLoop()

    counter = 1..10

    for c in counter

      puts "#{c}"

    end

    puts ""

    fruits = ["Apples", "Strawberries", "Pineapples"]

   fruits.each do |fruit|
      puts "We have #{fruit.to_s}"
   end
  end
end

loop = Loops.new()

loop.forLoop()


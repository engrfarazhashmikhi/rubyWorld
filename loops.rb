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

play()


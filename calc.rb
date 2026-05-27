# Ruby Simple Calculator Program;

num = nil
numb = nil
calculate = nil

puts "Enter any Random Number: "
num = gets.chomp().to_i

puts "Enter another Random Number: "
numb = gets.chomp().to_i

calculate = (num + numb)

puts("The answer is: " + calculate.to_s)


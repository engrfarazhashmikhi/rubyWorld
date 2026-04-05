
def addition(ans = 0.00)
  getNum = 24.42
  getNumb = 36.42
  calculation = (getNum + getNumb)
  remarks = nil

  if ans == calculation
    remarks = "CORRECT!"

  elsif ans < 60 and ans > 30
    remarks = "Sooo CLOSE"

  elsif ans > 60
    remarks = "You are on MARS buddy!"

  else
    remarks = "Learn Maths first!"

  end
  
  return remarks

end

ans = nil

puts "Simple Quiz Game"
puts "================"
print "\n"

puts "Q: What is (24.42 + 36.42)=?"
ans = gets.chomp().to_f
puts "#{addition(ans)}";


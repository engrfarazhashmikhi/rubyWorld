puts "SMART Coffee House"
puts "=================="
print "\n"
puts "Choose You coffee from Menu:"
coffees = Array(["Coffee lattes", "Coffee cappuccinos", "Coffee americanos", "Coffee macchiatos", "Coffee cortados", "Coffee cold brews"])
puts coffees
puts "Enter your choice from [#{((coffees.length() * 0) + 1)} to #{(coffees.length())}]: "
coffee_choice = (gets.chomp().to_i - 1)
your_coffee = "Here is your "

case coffee_choice
when 0
  your_coffee = your_coffee + coffees[coffee_choice]
when 1
  your_coffee = your_coffee + coffees[coffee_choice]
when 2
  your_coffee = your_coffee + coffees[coffee_choice]
when 3
  your_coffee = your_coffee + coffees[coffee_choice]
when 4
  your_coffee = your_coffee + coffees[coffee_choice]
when 5
  your_coffee = your_coffee + coffees[coffee_choice]
else
  your_coffee= "Currently, We are not SERVING thaat!"
end

puts "#{your_coffee}"


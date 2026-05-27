puts "Ruby Arrays Example"
numbs = Array.new
numbs = Array[1,2,3,43,546,6765,54645,6]
puts numbs
print "\n"
puts "Array Reverse"
numbs.reverse()
puts numbs
print "\n"
puts "Array Sort"
numbs.sort()
puts numbs
print "\n"
puts ("Array Length: "+ numbs.length.to_s)
print "\n"
arr = Array.new(40)
puts("Array values: " + arr.to_s)
puts("Array size: " + arr.size().to_s)
puts("Array Length: " + arr.length().to_s)

puts "#{numbs[5,7]}"
puts "#{numbs[10]}"


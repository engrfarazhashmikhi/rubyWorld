
def greetings()
  puts "Assalam-O-Alaikum World"
end

def userGreet(name = nil)
  getName = name.to_s
  #puts "Assalam-O-Alaikum #{getName}"
  return getName
end

#greetings()
puts "Enter your SWEET name please: "
yourName = gets.chomp().to_s.upcase()
userGreet(yourName)
puts "Hello #{userGreet(yourName)}"


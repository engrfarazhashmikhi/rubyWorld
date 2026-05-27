require_relative "ruby_modules.rb"

def display()
  greetings = "Assalam-O-Alaikum"
  userName = nil

  puts "Enter your name please: ";
  userName = gets.chomp()

  puts(greetings + " " + userName)
  puts("ENJOY coding in Ruby Programming Language.")
end

begin

  display()

rescue Exception => e

  puts "Errr: " + e.to_s

ensure
  puts("Good Bye...")

end


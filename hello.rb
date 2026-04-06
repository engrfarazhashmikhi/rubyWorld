require_relative "ruby_modules.rb"

greetings = "Assalam-O-Alaikum"
userName = nil

puts "Enter your name please: ";
userName = gets.chomp()

puts(greetings + " " + userName)
puts("ENJOY coding in Ruby Programming Language.")

RubyModules.greetings()


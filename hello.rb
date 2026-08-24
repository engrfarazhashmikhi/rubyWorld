#!/usr/bin/env ruby -wKU
require_relative "ruby_modules.rb"
require_relative "functions"

def display()
  greetings = "Assalam-O-Alaikum"
  userName = nil

  puts "Enter your name please: ";
  userName = gets.chomp()

  puts(greetings + " " + userName)
  puts("ENJOY coding in Ruby Programming Language.")
end

begin

  # display()

#  result = Functions.feet_to_meters()

  result = Functions.meters_to_feet()
  
  puts("Result: "+result)

rescue Exception => e

  puts "Errr: " + e.to_s

ensure
  puts("Good Bye...")

end


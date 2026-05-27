class RubyClassExample

  attr_accessor :name, :title

  def initialize(name = nil, title = nil)
    puts "Ruby Class Constructor"
    @title = title
    @name = name
  end

  def greetings()
    puts "Assalam-O-Alaikum World"
  end

end

class Example < RubyClassExample

  def initialize()
  end

  def hello(name = nil)
    puts "Assalam-O-Alaikum #{name}"
  end

end
begin

  obj1 = RubyClassExample.new("Ruby", "Class")
  obj2 = Example.new()

  puts "Object 2 Title: #{obj2.title}"
  puts "Object 1 Title: #{obj1.title}"

  puts "Object 1 Name: #{obj1.name}"
  puts "Object 2 Name: #{obj2.name}"

  obj1.greetings() #Super Class Method

  obj2.hello("Engr Syed Muhammad Faraz Hashmi") #Drived Class Method.
  obj2.greetings() # Super Class Method In Drived Class Due To Inheritance.

rescue Exception => e
  puts "Errr #{e}"

end


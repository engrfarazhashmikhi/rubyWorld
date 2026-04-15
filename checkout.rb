require_relative "functions.rb"

begin

  bill = Functions.checkOut()

  for b in bill

    puts "#{b.to_s}/=PKR"

  end

rescue Exception => e

  puts "Errr: " + e.to_s

end


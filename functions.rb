module Functions
  def self.greeting()
    puts "Jummad Mubrak"
  end

  def self.getInputFromUser(message = nill)
    puts "#{message.to_s}"
    statement = gets().chomp().to_s
    statement
  end

  def self.generateBill
    order_price = self.getInputFromUser("Enter Order Price: ")
    standard_delivery = self.getInputFromUser("Enter delivery charges: ")
    discount_applied = self.getInputFromUser("Enter discount applied: ")
    platform_fee = self.getInputFromUser("Enter Extra Charges: ")
    subtotal = ((order_price.to_f + standard_delivery.to_f + platform_fee.to_f)-discount_applied.to_f)
    return subtotal.to_f
  end
end


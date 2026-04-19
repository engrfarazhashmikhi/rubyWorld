module Functions
  def self.greeting()
    puts "Jummad Mubrak"
  end

  def self.getInputFromUser(message = nill)
    puts "#{message.to_s}"
    statement = gets().chomp().to_s
    return statement
  end

  def self.generateBill
    order_price = self.getInputFromUser("Enter Order Price: ").to_f
    standard_delivery = self.getInputFromUser("Enter delivery charges: ").to_f
    discount_applied = self.getInputFromUser("Enter discount applied: ").to_f
    platform_fee = self.getInputFromUser("Enter Extra Charges: ").to_f
    tax_applied = (order_price.to_f * (15/100).to_f)
    subtotal = ((order_price.to_f + standard_delivery.to_f + platform_fee.to_f + tax_applied.to_f)-discount_applied.to_f)
    return subtotal.to_f
  end

  def self.checkOut()
    getBillPrice = self.generateBill().to_f
    payment = self.getInputFromUser("Payment Please: ").to_f
    change = (payment - getBillPrice)
    return { "Payment" => payment, "Change: " => change, "Subtotal" => getBillPrice}
  end
end


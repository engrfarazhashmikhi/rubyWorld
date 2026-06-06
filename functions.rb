module Functions
  def self.greeting()
    puts "Jummad Mubrak"
  end

  def self.getInputFromUser(message = nill)
    puts "#{message.to_s}"
    statement = gets().chomp().to_s
    return statement
  end

  def self.calcTax(price_amount = 0.00, tax_rate = 0.00)
    calculatedTAX = (price_amount.to_f * tax_rate.to_f).to_f
    calculatedTAX
  end

  def self.generateBill()
    order_price = self.getInputFromUser("Enter Order Price: ").to_f
    standard_delivery = self.getInputFromUser("Enter delivery charges: ").to_f
    discount_applied = self.getInputFromUser("Enter discount applied: ").to_f
    platform_fee = self.getInputFromUser("Enter Extra Charges: ").to_f
    tax_applied = self.calcTax(order_price, 0.15).to_f
    # subtotal = ((order_price + tax_applied + standard_delivery + platform_fee ) - discount_applied)
    subtotal = (((((order_price - discount_applied) + standard_delivery) + platform_fee)).to_f)
    [subtotal.to_f, tax_applied]
  end

  def self.checkOut()
    getBillPrice = (self.generateBill())
    tax_paid = (getBillPrice[1].to_f)
    billPrice = (getBillPrice[0].to_f)
    payment = (self.getInputFromUser("Payment Please: ").to_f)
    change = ((payment - billPrice).to_f)
    return { :Payment  => payment.round(2), :Change  => change.round(2), :Subtotal => billPrice.round(2), :Tax => tax_paid.round(2) }
  end
end


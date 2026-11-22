module Functions
  def self.greeting()
    puts "Jummad Mubrak"
  end

  def self.getInputFromUser(message = nill)
    puts "#{message.to_s}"
    statement = gets().chomp().to_s
    return statement
  end

  def self.giveOutPut(outputStatement = nill)
    getOutPut = (outputStatement).to_s
    puts(getOutPut)
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

  def self.feet_to_meters()
    value_in_feet = (self.getInputFromUser("Enter amount of feet: ").to_f)
    formula = (3.281).to_f
    calculate = (value_in_feet / formula).to_f
    (calculate).to_s
  end
  def self.meters_to_feet()
    value_in_meters = (self.getInputFromUser("Enter amount of meters: ").to_f)
    formula = (3.281).to_f
    calculate = (value_in_meters * formula).to_f
    (calculate).to_s
  end

  def self.carCostCalculator()
    # Fuel Tank:  36  Litres
    # Fuel Economy: 13.5  KM/Litres
    # Capicity: 6.5 
    # Fuel:   362 Litres
    # Distance Cover: 486 KM/Full Tank
    # Full Tank:  13032 /=PKR
    # Full Tank Distance: 26.8148148148148  PKR/KM
    # Cover Distance: 20  KM/
    # Total Cost: 536.296296296296  

    fuelTank = self.getInputFromUser("Enter Fuel Tank Capacity: ").to_f
    fuelPrice = self.getInputFromUser("Enter Fuel Price Per Litre: ").to_f
    fuelEconomy = self.getInputFromUser("Enter Average: ").to_f
    fullTankCost = (fuelTank * fuelPrice).to_f
    distanceCover = (fuelTank * fuelEconomy).to_f
    fullTankDistance = (fullTankCost / distanceCover).to_f 
    coverDistance = self.getInputFromUser("Enter Distance To Cover in KM: ").to_f
    totalCost =  (fullTankDistance * coverDistance).to_f

    self.giveOutPut("Fuel Tank Capacity: " + (fuelTank.to_s) + " Litres")
    self.giveOutPut("Fuel Price: " + (fuelPrice.to_s) + "/Litre")

    self.giveOutPut("Fuel Average: " + (fuelEconomy.to_s) + "/Litre")
    self.giveOutPut("Distance Cover: " + (distanceCover.to_s) + " Full Tank KM")

    self.giveOutPut("Full Fuel Tank Distance Cover: " + (fullTankDistance.to_s + " KM"))
    self.giveOutPut("Distance To cover: " + (coverDistance.to_s) + " KM")

    self.giveOutPut("Distance Cost: " + (totalCost.to_s) + (coverDistance.to_s) + "/=")
    self.giveOutPut("Full Tank Cost: " + (fullTankCost.to_s) + "/=")

  end
end


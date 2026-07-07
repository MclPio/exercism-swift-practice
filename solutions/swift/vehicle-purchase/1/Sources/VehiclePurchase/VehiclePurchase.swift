func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPayment = price / 60

  if monthlyPayment <= monthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  } else if monthlyPayment <= monthlyBudget * 1.10 {
    return "I'll have to be frugal if I want a \(vehicle)"
  } else {
    return "Darn! No \(vehicle) for me"
  }
  fatalError("Please implement the canIBuy(vehicle:price:monthlyBudget:) function")
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 || wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  } else if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  } else {
    return "We do not issue licenses for those types of vehicles"
  }
  fatalError("Please implement licenseType(numberOfWheels:) function")
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if yearsOld < 3 {
    return originalPrice * 8/10
  } else if yearsOld >= 3 && yearsOld < 10 {
    return originalPrice * 7/10
  } else {
    return originalPrice * 1/2
  }
  fatalError("Please implement calculateResellPrice(originalPrice:yearsOld:) function")
}

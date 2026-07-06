func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(8 * hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return Double(dailyRateFrom(hourlyRate: hourlyRate) * 22) - (Double(dailyRateFrom(hourlyRate: hourlyRate) * 22) * discount/100)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (budget / (Double(hourlyRate) - (Double(hourlyRate) * discount/100)) / 8).rounded(.down)
}

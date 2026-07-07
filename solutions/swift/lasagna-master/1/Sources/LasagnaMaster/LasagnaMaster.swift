// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven( elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes( layers: String...) -> Int {
  return layers.count * 2
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  func countItem(itemName: String) -> Int {
    layers.filter { $0 == itemName }.count
  }

  let noodles = countItem(itemName: "noodles") * 3
  let sauce = Double(countItem(itemName: "sauce")) * 0.2

  return (noodles: noodles, sauce: sauce)
}

// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
  amount.sauce = amount.sauce * 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
  func count(_ itemName: String) -> Int {
    layers.filter { $0 == itemName }.count
  }

  let mozzarella = count("mozzarella")
  let ricotta = count("ricotta")
  let bechamel = count("béchamel")
  let meat = count("meat")
  let sauce = count("sauce")

  let a = mozzarella + ricotta + bechamel
  let b = meat + sauce

  return a <= b
}
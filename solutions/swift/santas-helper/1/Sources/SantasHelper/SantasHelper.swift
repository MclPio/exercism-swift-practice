func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name, amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  let items: [(name: String, amount: Int)] = items
  var newItems: [(name: String, amount: Int)] = []
  for item in items {
    if item.name == toy {
      newItems.append((toy, amount))
    } else {
      newItems.append((item.name, item.amount))
    }
  }
  return newItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  let items = items
  var newItems: [(name: String, amount: Int, category: String)] = []
  for item in items {
    let (name, amount) = item
    newItems.append((name, amount, category))
  }
  return newItems
}

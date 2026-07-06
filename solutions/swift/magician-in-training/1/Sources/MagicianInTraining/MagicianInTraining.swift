func getCard(at index: Int, from stack: [Int]) -> Int {
  var stack = stack
  return stack[index]
  fatalError("Please implement the getCard(at:from:) function")
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  if index < 0 || index >= stack.count {
    return stack
  }
  var stack = stack
  stack[index] = newCard
  return stack
  fatalError("Please implement the setCard(at:from:to:) function")
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var stack = stack
  stack.append(newCard)
  return stack
  fatalError("Please implement the insert(_:atTopOf:) function")
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  if index < 0 || index >= stack.count {
    return stack
  }
  var stack = stack
  stack.remove(at: index)
  return stack
  fatalError("Please implement the removeCard(at:from:) function")
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  if index < 0 || index > stack.count  {
    return stack
  }
  var stack = stack
  stack.insert(newCard, at: index)
  return stack
  fatalError("Please implement the insert(_:at:from:) function")
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  var stack = stack
  return stack.count == size
  fatalError("Please implement the checkSizeOfStack(_:_:) function")
}

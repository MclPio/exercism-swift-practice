class Squares {
  var n: Int

  init(_ n: Int) {
    self.n = n
  }
  
  var squareOfSum: Int {
    var total = 0
    for i in 1...n {
      total += i
    }
    return total * total
  }

  var sumOfSquares: Int {
    var total = 0
    for i in 1...n {
      total += i * i
    }
    return total
  }

  var differenceOfSquares: Int {
    return squareOfSum - sumOfSquares
  }
}

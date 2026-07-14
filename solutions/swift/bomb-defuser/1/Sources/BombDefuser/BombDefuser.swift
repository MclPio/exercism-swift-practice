typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

//let flip: ChangeClosure = TODO: Please define the flip closure
//
//
//let rotate: ChangeClosure = TODO: Please define the rotate closure

let flip: ChangeClosure = { wire in
    (wire.1, wire.0, wire.2)
}

let rotate: ChangeClosure = { wire in 
  (wire.1, wire.2, wire.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
  {arr, wires in 
    var currentWires = wires
    for item in arr.reversed() {
      if item == 0 {
        currentWires = flipper(currentWires)
      } else if item == 1 {
        currentWires = rotator(currentWires)
      }
    }
    return currentWires
  }
}
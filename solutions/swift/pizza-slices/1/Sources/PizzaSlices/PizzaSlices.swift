import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  // -diameter &
  // slices < 1 return nil

  guard let diameter = diameter else {
    return nil
  }

  guard let slices = slices else {
    return nil
  }

  if diameter < 0 || slices < 1 {
    return nil
  } else {
    let area = pow(diameter/2, 2) * Double.pi
    return area/Double(slices)
  }
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let diameterA = Double(diameterA)
  let slicesA = Int(slicesA)
  let diameterB = Double(diameterB)
  let slicesB = Int(slicesB)

  let sliceSizeA = sliceSize(diameter: diameterA, slices: slicesA)
  let sliceSizeB = sliceSize(diameter: diameterB, slices: slicesB)

  switch (sliceSizeA, sliceSizeB) {
    case let (valA?, valB?):
        if valA > valB {
          return "Slice A is bigger"
        } else if valA < valB {
          return "Slice B is bigger"
        } else {
          return "Neither slice is bigger"
        }

    case (_?, nil):
        return "Slice A is bigger"

    case (nil, _?):
        return "Slice B is bigger"

    case (nil, nil):
        return "Neither slice is bigger"
    }
}

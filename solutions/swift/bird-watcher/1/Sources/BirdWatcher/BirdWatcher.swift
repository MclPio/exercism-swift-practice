func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for birdsCounted in birdsPerDay {
    total += birdsCounted
  }
  return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  let start = (weekNumber - 1) * 7
  let end = start + 7
  var total = 0
  for i in start..<end {
    total += birdsPerDay[i]
  }
  return total
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var birdsPerDay = birdsPerDay

  for i in stride(from: 0, to: birdsPerDay.count, by: 2) {
    birdsPerDay[i] += 1
  }
  return birdsPerDay
}

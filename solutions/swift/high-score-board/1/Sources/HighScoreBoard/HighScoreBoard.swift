func newScoreBoard() -> [String: Int] {
  return [String: Int]()
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores[name] = nil
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  if scores[name] != nil {
    scores[name] = 0
  }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  if let currentScore = scores[name] {
    scores[name] = currentScore + delta
  }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
 func ascendingByName(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
  return lhs.0 < rhs.0
}

  let sortedPlayers = scores.sorted(by: ascendingByName)
  return sortedPlayers
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  func descendingByScore(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
    return lhs.1 > rhs.1
  }

  let sortedPlayers = scores.sorted(by: descendingByScore)
  return sortedPlayers
}

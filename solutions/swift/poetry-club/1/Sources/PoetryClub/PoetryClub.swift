import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  return poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
  let splitPhrase = splitOnNewlines(phrase)
  var password: Array<String> = []
  
  for line in splitPhrase {
    if let first = line.first {
      password.append(String(first))
    } else {
      password.append("_")
    }
  }

  return password.joined(separator: "").uppercased()
}

func backDoorPassword(_ phrase: String) -> String {
  let splitPhrase = splitOnNewlines(phrase)
  var password: Array<String> = []

  for line in splitPhrase {
    let strippedLine = line.replacingOccurrences(of: " ", with: "")
    if let last = strippedLine.last {
      password.append(String(last))
    } else {
      password.append("_")
    }
  }

  password.append(", please")
  return password.joined(separator: "")
}

func secretRoomPassword(_ phrase: String) -> String {
  let splitPhrase = splitOnNewlines(phrase)
  var password: Array<String> = []

  for i in 0..<splitPhrase.count {
    let line = splitPhrase[i]
    let indexOfLine = line.index(line.startIndex, offsetBy: i)
    password.append(String(line[indexOfLine]))
  }
  password.append("!")
  return password.joined(separator: "").uppercased()
}
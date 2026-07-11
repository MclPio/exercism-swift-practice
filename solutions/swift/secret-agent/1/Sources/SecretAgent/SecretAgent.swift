func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  
  func enterPassword(_ attempt: String) -> String {
    if attempt == password {
      return secret
    } else {
      return "Sorry. No hidden secrets here."
    }
  }
  return enterPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let x = f(room)
  let y = f(x)
  let z = f(y)

  return (x, y, z)
}

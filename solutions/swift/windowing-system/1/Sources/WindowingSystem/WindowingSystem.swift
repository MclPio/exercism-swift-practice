struct Size {
  var width: Int = 80
  var height: Int = 60

  mutating func resize(newWidth: Int, newHeight: Int) {
    self.width = newWidth
    self.height = newHeight
  }
}

struct Position {
  var x: Int = 0
  var y: Int = 0

  mutating func moveTo(newX: Int, newY:Int) {
    self.x = newX
    self.y = newY
  }
}

class Window {
  var title: String = "New Window"
  let screenSize = Size(width: 800, height: 600)
  var size = Size()
  var position = Position()
  var contents: String?

  init() {}

  init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
    self.title = title
    self.contents = contents
    self.size = size
    self.position = position
  }

  func update(title: String) {
    self.title = title
  }

  func update(text: String?) {
      self.contents = text
  }

  func display() -> String {
    if let contents = self.contents {
      return "\(self.title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))\n\(contents)\n"
    } else {
      return "\(self.title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))\n[This window intentionally left blank]\n"
    }
  }

  func move(to: Position) {
    var newX: Int = to.x
    var newY: Int = to.y

    // smallest position possible is 0
    if newX < 0 {
      newX = 0
    }
    if newY < 0 {
      newY = 0
    }

    // we are comparing requested position to current position given a window size.
    // windowSize = Size(width: 250, height: 100)
    // requestedPosition = Position(x: 600, y: 200)
    // screenSize = Size(width = 800, height = 600)
    if self.screenSize.width - newX <= self.size.width {
      newX = newX - (self.size.width - (self.screenSize.width - newX))
    }

    if self.screenSize.height - newY <= self.size.height {
      newY = newY - (self.size.height - (self.screenSize.height - newY))
    }

    position.moveTo(newX: newX, newY: newY)
  }
  
  func resize(to: Size) {
    var newWidth: Int = to.width
    var newHeight: Int = to.height
    
    if newWidth < 1 {
      newWidth = 1
    }

    if newHeight < 1 {
      newHeight = 1
    }

    if self.screenSize.width - self.position.x < newWidth {
      newWidth = self.screenSize.width - self.position.x
    }

    if self.screenSize.height - self.position.y < newHeight {
      newHeight = self.screenSize.height - self.position.y
    }

    self.size = Size(width: newWidth, height: newHeight)
  }
}
func timeToPrepare(drinks: [String]) -> Double {
    let timePerDrink: [String: Double] = [
        "beer": 0.5,
        "soda": 0.5,
        "water": 0.5,
        "shot": 1.0,
        "mixed drink": 1.5,
        "fancy drink": 2.5,
        "frozen drink": 3.0
    ]

    var totalTime: Double = 0

    for drink in drinks {
        totalTime += timePerDrink[drink] ?? 0
    }

    return totalTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var needed = needed
    var limes = limes
    var limesRemoved = 0

    func limeWedges(lime: String) -> Int {
        switch lime {
        case "small":
            return 6
        case "medium":
            return 8
        case "large":
            return 10
        default:
            return 0
        }
    }

    while needed > 0 && !limes.isEmpty {
        let removedLime = limes.removeFirst()
        needed -= limeWedges(lime: removedLime)
        limesRemoved += 1
    }

    return limesRemoved
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var minutesLeft = Double(minutesLeft)
    var remainingOrders = remainingOrders

    while minutesLeft > 0 && !remainingOrders.isEmpty {
        let order = remainingOrders.removeFirst()
        let prepTime = timeToPrepare(drinks: order)
        minutesLeft -= prepTime
    }

    return remainingOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String, last: String, total: Int)?,
    soda: (first: String, last: String, total: Int)?
) {
    var tracked: (
        beer: (first: String, last: String, total: Int)?,
        soda: (first: String, last: String, total: Int)?
    ) = (
        beer: nil,
        soda: nil
    )

    func updateStats(
        _ stats: (first: String, last: String, total: Int)?,
        with time: String
    ) -> (first: String, last: String, total: Int) {
        guard var stats = stats else {
            return (first: time, last: time, total: 1)
        }

        if time < stats.first {
            stats.first = time
        }

        if time > stats.last {
            stats.last = time
        }

        stats.total += 1
        return stats
    }

    for order in orders {
        switch order.drink {
        case "beer":
            tracked.beer = updateStats(tracked.beer, with: order.time)

        case "soda":
            tracked.soda = updateStats(tracked.soda, with: order.time)

        default:
            continue
        }
    }

    return tracked
}
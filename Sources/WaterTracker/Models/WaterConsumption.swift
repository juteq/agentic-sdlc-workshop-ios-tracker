import Foundation

struct WaterConsumption {
    private(set) var amountInOunces: Int = 0

    mutating func increment() {
        amountInOunces += 8
    }

    mutating func decrement() {
        if amountInOunces >= 8 {
            amountInOunces -= 8
        }
    }
}
import Foundation

class WaterTrackingController: ObservableObject {
    @Published private var consumption = WaterConsumption()

    var amountInOunces: Int {
        consumption.amountInOunces
    }

    func increment() {
        consumption.increment()
    }

    func decrement() {
        consumption.decrement()
    }
}
import Foundation
import SwiftUI

protocol WaterTrackingPresenterProtocol: ObservableObject {
    var amountInOunces: Int { get }
    func increment()
    func decrement()
}

final class WaterTrackingPresenter: WaterTrackingPresenterProtocol {
    @Published private var model: WaterConsumption
    
    init(model: WaterConsumption = WaterConsumption()) {
        self.model = model
    }
    
    var amountInOunces: Int {
        model.amountInOunces
    }
    
    func increment() {
        var updatedModel = model
        updatedModel.increment()
        model = updatedModel
    }
    
    func decrement() {
        var updatedModel = model
        updatedModel.decrement()
        model = updatedModel
    }
}
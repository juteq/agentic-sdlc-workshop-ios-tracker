import SwiftUI

@main
struct WaterTrackerApp: App {
    @StateObject private var waterController = WaterTrackingController()

    var body: some Scene {
        WindowGroup {
            WaterTrackingView()
                .environmentObject(waterController)
        }
    }
}
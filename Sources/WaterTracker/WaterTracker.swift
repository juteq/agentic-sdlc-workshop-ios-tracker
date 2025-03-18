import SwiftUI

@main
struct WaterTrackerApp: App {
    @StateObject private var presenter = WaterTrackingPresenter()

    var body: some Scene {
        WindowGroup {
            WaterTrackingView()
                .environmentObject(presenter)
        }
    }
}
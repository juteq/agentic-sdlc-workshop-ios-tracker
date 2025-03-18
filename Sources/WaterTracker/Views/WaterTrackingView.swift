import SwiftUI

struct WaterTrackingView: View {
    @EnvironmentObject private var controller: WaterTrackingController

    var body: some View {
        VStack(spacing: 20) {
            Text("\(controller.amountInOunces) oz")
                .font(.system(size: 48, weight: .bold))

            Text("consumed today")
                .font(.title2)
                .foregroundColor(.secondary)

            HStack(spacing: 30) {
                Button(action: controller.decrement) {
                    Label("-8 oz", systemImage: "minus.circle.fill")
                        .font(.title2)
                }
                .disabled(controller.amountInOunces < 8)

                Button(action: controller.increment) {
                    Label("+8 oz", systemImage: "plus.circle.fill")
                        .font(.title2)
                }
            }
            .buttonStyle(.bordered)
            .tint(.blue)
        }
        .padding()
        .navigationTitle("Water Tracker")
    }
}
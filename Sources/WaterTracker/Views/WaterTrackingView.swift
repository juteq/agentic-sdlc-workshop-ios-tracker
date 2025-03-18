import SwiftUI

struct WaterTrackingView: View {
    @EnvironmentObject private var presenter: WaterTrackingPresenter

    var body: some View {
        VStack(spacing: 20) {
            Text("\(presenter.amountInOunces) oz")
                .font(.system(size: 48, weight: .bold))

            Text("consumed today")
                .font(.title2)
                .foregroundColor(.secondary)

            HStack(spacing: 30) {
                Button(action: presenter.decrement) {
                    Label("-8 oz", systemImage: "minus.circle.fill")
                        .font(.title2)
                }
                .disabled(presenter.amountInOunces < 8)

                Button(action: presenter.increment) {
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
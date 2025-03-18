// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "WaterTracker",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .executable(
            name: "WaterTracker",
            targets: ["WaterTracker"]
        )
    ],
    targets: [
        .executableTarget(
            name: "WaterTracker",
            dependencies: []
        )
    ]
)

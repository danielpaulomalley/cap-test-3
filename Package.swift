// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapTest3",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapTest3",
            targets: ["CapTest3Plugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CapTest3Plugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapTest3Plugin"),
        .testTarget(
            name: "CapTest3PluginTests",
            dependencies: ["CapTest3Plugin"],
            path: "ios/Tests/CapTest3PluginTests")
    ]
)
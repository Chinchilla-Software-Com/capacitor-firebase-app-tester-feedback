// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ChinchillaSoftwareFirebaseAppTesterFeedback",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ChinchillaSoftwareFirebaseAppTesterFeedback",
            targets: ["FirebaseAppTesterFeebackPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FirebaseAppTesterFeebackPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FirebaseAppTesterFeebackPlugin"),
        .testTarget(
            name: "FirebaseAppTesterFeebackPluginTests",
            dependencies: ["FirebaseAppTesterFeebackPlugin"],
            path: "ios/Tests/FirebaseAppTesterFeebackPluginTests")
    ]
)
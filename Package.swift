// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TortuousCarRide",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "TortuousCarRide",
            targets: ["TortuousCarRide"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/hmlongco/Resolver.git", from: "1.1.4"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.1.1"),
        .package(url: "https://github.com/mchoe/SwiftSVG", from: "2.3.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "TortuousCarRide",
            dependencies: ["RxSwift", "Resolver", "SwiftSVG"]),
        .testTarget(
            name: "TortuousCarRideTests",
            dependencies: ["TortuousCarRide", "Resolver", "SwiftSVG"]),
    ]
)

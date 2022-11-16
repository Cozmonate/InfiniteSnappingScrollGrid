// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InfiniteSnappingScrollGrid",
    platforms: [
        .iOS(.v14),
        .macCatalyst(.v14),
        .macOS(.v10_13),
        .watchOS(.v8),
        .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "InfiniteSnappingScrollGrid",
            targets: ["InfiniteSnappingScrollGrid"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "InfiniteSnappingScrollGrid",
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")]),
        .testTarget(
            name: "InfiniteSnappingScrollGridTests",
            dependencies: ["InfiniteSnappingScrollGrid"]),
    ]
)

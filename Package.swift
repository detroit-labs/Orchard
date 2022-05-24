// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Orchard",
    platforms: [
        .iOS(.v9),
        .watchOS(.v2),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "Orchard",
            targets: ["Orchard"]),
    ],
    targets: [
        .target(
            name: "Orchard",
            dependencies: [],
            path: "Orchard-Swift"),
    ]
)

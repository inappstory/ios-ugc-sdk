// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InAppStoryUGC",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "InAppStoryUGC", targets: ["InAppStoryUGC"])
    ],
    targets: [
        .binaryTarget(
            name: "InAppStoryUGC",
            path: "InAppStoryUGC.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)


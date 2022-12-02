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
        .binaryTarget(name: "InAppStoryUGC",
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC-1.1.2.xcframework.zip",
                      checksum: "3b1c8eade4523128e9848b519351b655fba61f3a16ea7078f4342b3277570c17"
                )
    ],
    swiftLanguageVersions: [.v5]
)


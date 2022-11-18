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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC-1.1.0.xcframework.zip",
                      checksum: "0a58c9fc15777b97c366aebeecd31b8cd089fcbddb857144e08af1f4f7268f29"
                )
    ],
    swiftLanguageVersions: [.v5]
)

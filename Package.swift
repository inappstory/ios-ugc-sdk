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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC-1.1.6.xcframework.zip",
                      checksum: "cdd27cd3a0ee1c1b703cd2c76ec8ef66037eaeab669fbff089142aca91a94735"
                )
    ],
    swiftLanguageVersions: [.v5]
)


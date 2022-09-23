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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC-1.0.0.xcframework.zip",
                      checksum: "d5060c64c8af6a2268103f9f832efbe15231cd9adf6e100fdea240e5fd79ebb0"
                )
    ],
    swiftLanguageVersions: [.v5]
)

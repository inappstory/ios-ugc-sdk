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
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/11345958/InAppStoryUGC-1.2.0.xcframework.zip",
                      checksum: "1db1ea5ce62a7eca6b1d08c1501be8d1cabe4ded47adbef25b346b31f251f1c1"
                )
    ],
    swiftLanguageVersions: [.v5]
)


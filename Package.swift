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
                      url: "https://github.com/inappstory/ios-ugc-sdk/files/11957289/InAppStoryUGC-1.2.2.xcframework.zip",
                      checksum: "ae5b469d53de278e930fae78ebe3d519dbd3f9b66cb704b617b959eb5d848679"
                )
    ],
    swiftLanguageVersions: [.v5]
)


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
                      url: "https://cs.inappstory.com/iOS/InAppStoryUGC-1.1.7.xcframework.zip",
                      checksum: "c270b74f7585ee8fcef7fc02249d7a55c3d6c32f7d3d3cec6877957513c16383"
                )
    ],
    swiftLanguageVersions: [.v5]
)

